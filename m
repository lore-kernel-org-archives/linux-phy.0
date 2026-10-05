Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08372CA5FFD
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 10:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEr+0cjUxpvoX91UUoy5jXtgjxP00P1cvIW2lSo6c0A=; b=5D4KncwyZXnJ+t
	MjCntIr71JP+AxZknNNpotKLfQg6xP7omT3KeZTN/zEmWxwMLYcGwN2bQK3vV5dEXkpPvT1qaVgvj
	NC0KWiezSbb/TTgQsjp0cRb1snXnj5PhXbCZT7yPIRJuQzNEn4XwhU58IpdXe2R22tiuxZ8QAjkL5
	3hALE1hSSNSxJjGm+jrdS75jR68+EbIT8rSAWDpl9GBQzPTQWrQ8olTCDRIB5qm6Ek58gpf9qRrBM
	jkNGV6NpmCywidJMUgncA5bdpi+iBmAxLRXVyRmWBcAMiE15QChfl68CcSTpHz0JaL5hE0FQqaEhG
	C3kDvPntfkh1HQckQGXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDftG-0000000GAjo-2y82;
	Mon, 05 Oct 2026 10:25:50 +0000
Received: from mail-qk2-x2a.google.com ([2607:f8b0:4864:34::2a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDftE-0000000GAio-39dZ
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 10:25:50 +0000
Received: by mail-qk2-x2a.google.com with SMTP id d75a77b69052e-5339b4a29f9so14653841cf.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 03:25:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791195947; cv=none;
        d=google.com; s=arc-20260327;
        b=kme8hqfnkz6oTo/I4IkPSYnjnt+ztGYSW2pAc1yXI4fj2XLHJReCn3TLMFYTjg6IWt
         RgkIJAgXyXHu6uSVlXHu7rJ31X5mUu6ZjrWp6QzNPjrmH9nXuaIlvoRK7INaRhNKxfo8
         honkgL59ye4pHlnA0jxJAeZ5QK1zgacwGS122lS7T82vo5ubT3jOQ98uCW911n3aRxvq
         ecH4//AyAer8P0b/u8Z3GZLrdj915VuH6Kml881STyly9r5dycUDCWjIzxxroCZ1ucXJ
         QdT+99yBiFT3aYIwZjCCyoLEcsfPc4OiPowdEyy9DLWaD7ngzqx5DauN8iMpSOmivJIA
         Sicw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ucvU/kgR0f2PerJN5pmTYU8pDaFbpOpWlV+rcfhn4p0=;
        fh=qrTXahqNkdnZGXUQ683CDg4hVrDbA8OUI2HPvfVXG4E=;
        b=bICrB8CR2lQNXjIaWXTRSqcOfkFAzkXjna3uSLo8RWrxcjDOHNJMP4qRRWBcMdTK1n
         jQTWZv/7CwTxTrNtX6iqIgNto9yKYkZPSG26r1FB/xqpYC6Ft8n4yg4fMtAeLDBgGLT1
         csLa1eJozN14qfn23Ko2ihLSXTqNX89bz62+9GVZCLyGS/JOKF3cpCArBwZfW6MplWuT
         OVY6Q4uPhgJBBEP8TNWYuDL14KFLwQ6K+MnNuUH9p/+T8O6jZJPk3G4MrV0dtmRUWPkK
         mbpHGmS9X6pnIv104pP72aa48/VjDMHMu5kPsZn1jqZGBBSzcrCPEI+MKPYzOVA9oVsp
         DLLQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791195947; x=1791800747; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ucvU/kgR0f2PerJN5pmTYU8pDaFbpOpWlV+rcfhn4p0=;
        b=j+okqObwrOwpKanLhm9je3VW5D2FdCcMhvDbCM8gA23JxwN0yHNp1qQKhOMxpAsN94
         mfHQQYuwYTm2cDLEt/DAC9j5voCaKrceQhluQA/a/Xb6rkkcYm03vXhPE2NCBZdKrK03
         movr5CK6XEcigcf4dFBPmgea4OhklFwOJsYzeK/Cv0c0eJcYkRP4L84lI3mrFh8VO5Ae
         DSvaK2tq6a5ZgBy+AGdVwz6QCUN25rBHSg7u9kGOggHhbgYqv7ZB8g32zW4fYwPWG1fh
         NpmbQf1Bzwtj3iHLWCJ1GQpvAWId4D8R800XWU2Y7CVMuZGGyVTH+I7wYDbsIDCYYmDc
         fZ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791195947; x=1791800747;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=ucvU/kgR0f2PerJN5pmTYU8pDaFbpOpWlV+rcfhn4p0=;
        b=rq47n19LEiETdt0ZlpBANHShCkhNt0F3Si+nWW3NG0/1iZfWwSEaD9hweT0WcAoLWH
         K9hfxDDBBK4WnNRKVviQmQXQ45GDg3MTZzNsCKAj8xahRtphjMMRVbr6XyhgE2z8C1ym
         2FzrhqUpBWP2QCe6f1NfWsiVgUXvdf/h/UTrT6AkuVfTRTy1BjfhvyTshn/mc4mdvkBk
         EUvReGeOjJo9+jBmRVJ6ljnzGR9DwZrRiYeHBPAhw0P9c18KS524nm6l6gb+N3YPM48O
         REQ/q1+kQjVcaRf7Ihg755DOZDGhk4auMD3j0tphvsTnhm8WU3jK8dG1sVA+A31jc9fq
         9Xag==
X-Forwarded-Encrypted: i=1; AKwUvBzfLPteXuyUVBvaCFm+ZAuldwevuYiEiojvW2pX528UcDdRPRQJb+OEcTizK7rJ3nfDIzIKpQhZdIc=@lists.infradead.org
X-Gm-Message-State: AFuF++nZGLV5tTrziguL7HRn4qLKzE17NN65eRDe4WqV79YCjqg97fTV
	N+fr/jZSnT0nQkNGiBwaIk8Sbovb2iuQAElIG/k8+a+6oypgRHlnkz7iICk/3cBNEpb0pT38yZ4
	vf5b58BGC0hGiWVXG9DigoCo8EHnMI1q+tgJH
X-Gm-Gg: AYBFou19EVasODTHNeuB7ghsKn15cvH7Z3hWOk14/ATcYI1KT9Bh6h+Aoe/xbHw7hiC
	JUdmCCXwKEc8zhxo/DxdC9fL9sFIOMkLkeIYCYIMj5Bq8UA1EVzazGdBdVqHb8AbCP66/15oQCN
	VCXV5hBF/F3AQErb2udD1JSLrxcUBRYvmiFl+YBAosFCh+mmvDxJuq3DZa9jFdnnEhKirOKEr8Q
	gFUKdXqS/tsnlftcmAOUIeDbRVxyeHDIFuxEtgPnxkJ7ciuFnYjmGFqUIeThtkwwMofjCGs3Pd9
	7CoFdmMmFf25Fqq2gYsqeX0tNzfNRkjdZoeDxCSDTllaDGafTRxORO3jGsiirQDgb9rb3a6Pngv
	npO02QpvE
X-Received: by 2002:a05:622a:4d45:b0:533:972d:ff95 with SMTP id
 d75a77b69052e-533cbdb3d51mr186553931cf.34.1791195946812; Mon, 05 Oct 2026
 03:25:46 -0700 (PDT)
MIME-Version: 1.0
References: <20260930071826.48811-1-ansuelsmth@gmail.com> <asN42bZlK_jwS6uH@parshuram>
In-Reply-To: <asN42bZlK_jwS6uH@parshuram>
From: "Christian Marangi (Ansuel)" <ansuelsmth@gmail.com>
Date: Mon, 5 Oct 2026 12:25:34 +0200
X-Gm-Features: AclHuK8w1WLWfIar1hB2u7SB0lgs-cuuBNgIsiH-Khygv0yU4CoS92D4l8-G0p8
Message-ID: <CA+_ehUw-Lx0wvN5O_9QFZb7USV8xBc=_z+7dkkB1ZW6owv3jVw@mail.gmail.com>
Subject: Re: [PATCH v12 0/3] airoha: an7581: USB support
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_032548_845599_3A9967BE 
X-CRM114-Status: GOOD (  17.69  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Il giorno lun 5 ott 2026 alle ore 12:15 Vinod Koul <vkoul@kernel.org>
ha scritto:
>
> On 30-09-26, 09:18, Christian Marangi wrote:
> > This is a major rework of the old v2 series.
> >
> > The SoC always support USB 2.0 but for USB 3.0 it needs additional
> > configuration for the Serdes port. Such port can be either configured
> > for USB usage or for PCIe lines or HSGMII and these are configured
> > in the SCU space.
> >
> > The previous implementation of a dedicated SSR driver was too
> > complex and fragile for the simple task of configuring a register
> > hence it was dropped and the handling is entirely in the PHY driver.
> >
> > Everything was reducted to the dt-bindings to describe the Serdes line.
> >
> > Also the property for the PHY are renamed to a more suitable name and
> > everything is now mandatory to simplify the implementation.
> > (the PHY are always present and active on the SoC)
> >
> > Also other unrelated patch are dropped from this series.
>
> This does not apply for me and Kconfig seems to have a trailing
> whitespace which checkpatch complains about. Can you fix these and send
>

Sure I'm doing right now!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
