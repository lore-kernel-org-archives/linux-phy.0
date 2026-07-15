Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C37E4C44507
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 19:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQnfuthp1NXMYCnJxA7Mz9B6/M3WLrYwWM4R+nWfPxo=; b=DTQUhgNffFU9SA
	lAUZLJ9wa+JGz1pkuNevMQduYja53Kqf0a9Ay8ryB4x8jPxbJWztrCdz85mQg6N6HtyEo7I3s+Pbs
	fn02nHnfo+8bSAqb+FBgXPEoKH0Uy24jjCg/SpgdS23ORgbN0yw0P62+eg3vWAa4tX0gYykXujo2T
	sEZ6Ej6HwYIfAC6DjM6xaMbWJJ5c1j0Uz3sBqSKCavxbcZypsygs5FZZuSB5hz4+1+i8fEY2qWPs+
	9wwVlwCPTu+if8AMwwjt20kIisW/N0fE5DNaPzQ9GTHMh8HMBIH3Etsbef6aMiX/RpjzB0/Z/Wtz3
	GGohVWHrkBc/ROlMdH5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5hZ-0000000FpXK-20tI;
	Wed, 15 Jul 2026 19:55:29 +0000
Received: from mail-ed2-x00.google.com ([2a00:1450:4864:33::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5hW-0000000FpWU-1V1A
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 19:55:28 +0000
Received: by mail-ed2-x00.google.com with SMTP id 4fb4d7f45d1cf-69af1ce9674so4249199a12.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Jul 2026 12:55:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784145323; cv=none;
        d=google.com; s=arc-20260327;
        b=LiLewj2d5EWZbFyDPpzL9xFenN2X2nZKt7nra83g0BIhX6zhuaFYzeE/6MMORQegJD
         bRVRJrtQykzM71J9j2qvknPE16qY2XCOn7khXrObspGuMyn30f08Wy+mblRK7nZg13Q+
         ZlRa5RAoHLEbzfoSs3WJYa0Qa59hws4UjXeP+nfj6hDzODt/K6/ScAYG353nWJISgDoJ
         vDwhbsUNpzv1pexgxgLgBxSiS9zA5JEgElVqwyZXweG+/M7cAgq2YMHvj00HI0/5URkf
         1efJmLgB8LcBdKlCGyFzTiE4R76hDiHyVmP9rLnSJvQyhhLfEbCp8DSUpE5YHoiKtDaa
         7HuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VnpQaYCb4lI/8U01znQ7H7w3JryvPYK3m+W/I/YdFSc=;
        fh=rvFkOP/AfMR+icw+548QpPRYAafiU+7XfAwymfl22vc=;
        b=ICxTPOiF7CQQXLT0E6RHgSKXgCAdX+mb6P+nLrOg9T8SDbnYrccGqMuzVYdByTm+u0
         fTOF448WXKRvGt2jcd4AweJFUkO4pvmQ3Tm8mHkI7zBaiEkSJxKnneOvZJ9EKYUDe2xX
         gIFCQkTX6u/MXgw2q+7EJHiwDYGg8STsYYRujt4WcQ8hQNCPcXrwMuPoc/2KH4WPV+GJ
         mbhqlYPhKvAbix+NNUuzyWoCcT4/k9KZ2b9LUeNpT+TRqzyJ29Ab+DJJiduvkfoNtu0U
         S2Eln0jtBGfprRHry/KzBo5cOR6XmofLdMGrt66TnoRKjBuIKvBDeNPtRtgAxhpSb0Xj
         Khvg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784145323; x=1784750123; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VnpQaYCb4lI/8U01znQ7H7w3JryvPYK3m+W/I/YdFSc=;
        b=ox4bfhF7/vkPLpWoVQgVSns4H7IvUj0KkMveevdoorTX8nckkoyhcRqL0cavbYGg0F
         WXur7FipIgZFMk72uWijYRWO/mU8AMMXCfFG1yOSY/3lYhw/O9pPnRRY5GEmhBwIE0vC
         1xOsJnrJNKNIRD3o8sHUEZJberNNaflr3K5lyjktGLOY0G+hAY7cCc0DDOanBRF5p7Aj
         dfwWsEvcZi7aInD+13m3Raa0Y+Zdx51q7UE+k+yLp6pEwDHA35YYy0C7OXFwQGooiXwt
         ykWhZrb12fadebIcGg6Gyl4gVjcJ5In0Mun07ax2dqZ+MfnhPJdQ25BZKrAo2hz1kEti
         Y8VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784145323; x=1784750123;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=VnpQaYCb4lI/8U01znQ7H7w3JryvPYK3m+W/I/YdFSc=;
        b=VVsmfqTt2rYWMyr5HyEfg6SCuO09QTLagUmtqPfHcIMbRDSAw9tukeEmpMwIxQTaBp
         KzE7iYubd1OEjOspvPcWGsBWMC19eOSc/h4q5/wp8yGaccBikJYHBAzs4Jyg2gzLLTxf
         ikCzQWKRWBYaSeIcii4Iys7BMHRky3CbUMkqCfcCoKSQ3omySL2mtGJQLKjiylF3e4Ce
         wVn+e2XnpxtFi3D+VQXTDySPvZ26LwobVVNFuGyApTUNON/qZX0ljFaZe6BASX3bmaRq
         GOjj425zfC1ZD08u6iZ+UzXlumtzeEgUNdnr9ZzgVu2DLD7qbmar1/EO5Mip1rjZMWkT
         AoMQ==
X-Gm-Message-State: AOJu0YylzRbf65Cwwcpw+pJ+mqAR0PcBJ6vccqgbaTRMGeeAsxAdXP2c
	BmxTmAbPA4kDM/JOGbVftEF//5sZKrZgWNu18bB3eaoXHnpzNQUQ96ZLSJiAtkiIUoS7xaT6RRK
	OEHYdEX8lA9nV/9FHRdQg2lqa0nzVnJo=
X-Gm-Gg: AfdE7clDx7kIL/7b9f47b1udVFg0nT39ggIYjMvF8tTvaKA8gqg07bbwnkUh6He+Stm
	cuPmWUDvNK6HO6onla1nnqwqOA6DXWBOJfFwHhBB0PbIH/eJdd9A3s30zA6uE4BP5ZpHjPMVYDL
	IzT60th4k5akmZmFolU3GIg82oJH2KL0fBao3QHWFa8P2i1PQ2+Qcjs/Hf/jLaGUbqAIo1btHj7
	kJSp3pJV6Nm9G+Ln3hJ8So0EH3dJfYIJ89JpdLR7GT8tlzkCYzQkWkuFHJ8ZiAV11p0U6dNNHM=
X-Received: by 2002:a17:907:7242:b0:c16:6e57:9444 with SMTP id
 a640c23a62f3a-c1679453361mr272846666b.39.1784145322452; Wed, 15 Jul 2026
 12:55:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-4-coiaprant@gmail.com>
 <20260715191450.5784D1F00A3D@smtp.kernel.org>
In-Reply-To: <20260715191450.5784D1F00A3D@smtp.kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 16 Jul 2026 03:55:11 +0800
X-Gm-Features: AUfX_mykLonGubsl8DxO-GKViagbh7KP9J0DCe96idGn5m70wlNIm0CCR-zZt1Y
Message-ID: <CALj3r0jq7F5HvQgpA_kq1+=AzMT2y2sG55TfJVWvWTZxwCbK9A@mail.gmail.com>
Subject: Re: [RFC PATCH 03/10] phy: rockchip: naneng-combphy: add SGMII MAC
 selection for RK3568
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, 
	olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, vkoul@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_125526_589284_E8A9ACFA 
X-CRM114-Status: GOOD (  13.68  )
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

> [Severity: High]
> Does this break device tree backward compatibility?
>
> When the rockchip,sgmii-mac-sel property is missing from an older device
> tree, priv->sgmii_mac_sel defaults to 0 in rockchip_combphy_parse_dt().
>
> By unconditionally calling rockchip_combphy_param_write() here, the driver
> now actively clears the MAC selection bit to 0 (GMAC0).
>
> Because the hardware reset value is GMAC1, this actively overrides the default
> hardware and bootloader state that older device trees were relying on.
>
> Could the code check if the property was actually present before writing
> to the register, to ensure the hardware default is preserved for existing
> setups?

Thanks for the detailed review. Regarding the backward compatibility
concern for Patch 3:

First, the driver code in the RFC patch set has already been revised
to align with the hardware default: `priv->sgmii_mac_sel = 1` (GMAC1).
So when the property is omitted, the hardware default is preserved.

Second, and more importantly, there is no backward compatibility
issue in practice: SGMII support for RK3568 has never been functional
in mainline before this series. There are no existing device trees
that rely on this path, because the PHY driver simply did not support
SGMII mode at all. Older device trees either didn't enable SGMII,
or were never operational.

So this change only affects new users who explicitly enable SGMII
and set the property as needed. It does not break anything that
was previously working.

Thanks,
Coia

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
