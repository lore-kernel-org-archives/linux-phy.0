Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8A71D61011
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jan 2026 13:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FAz2iv5nejoKv/fGfdL3bz1WPpiJOdJMeBZZ4tMNAhs=; b=HWnu4ikNaY4HMB
	BDADJJwELnTXLQiMlF0Dz3f/1lNROGt20X6MJy0N+6Pf2rRPk7PZffFaac+QPrWWdxLOmpnQWu1LP
	gyNlRXo1Cy9lK6JIevFGNzhL6Ro8W5Cq+wBkAdmvyy2nxzv/VGmAq4IadvcfoEfRPCL0V2iwDQTFP
	/owdpzow1DglV/3MoJc5Az2qIXWkqQCWeisRBDQcwARlHLV61oa/SQy+gErTVpSYyRQz/rc+ncsY+
	PFn7IuR/hx+KlXDGUbbFzIWpkaESLTD5B4HDGS6rpe7Ub4Qh51C9H3uiL+hYshkKsvy1LxInDCTB0
	5FMkReN57B0Ei+5eMWHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlSC7-00000000AKo-0l4i;
	Thu, 29 Jan 2026 13:36:23 +0000
Received: from mail-dl1-x1229.google.com ([2607:f8b0:4864:20::1229])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlSC3-00000000AK8-0v6X
	for linux-phy@lists.infradead.org;
	Thu, 29 Jan 2026 13:36:22 +0000
Received: by mail-dl1-x1229.google.com with SMTP id a92af1059eb24-11f36012fb2so1161821c88.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Jan 2026 05:36:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769693778; cv=none;
        d=google.com; s=arc-20240605;
        b=W9Etz2/DpcXdAArfaZpBFydrcqqIAX9u8TsQ/o1BdAakRTv/NPQIDJ1UsQehsXkT4s
         PnhuT8NZ0p+l9QM5w5W0rFHd1+gPa0J6WPeJptN3UuQ/YJK0lXRTfSlWuSVEN2KB1eHI
         31x48GT5zvxE+S29NhaiZGStM8mGcLLZMiI/aAkqmadKvOo4Ru2sT328++lypFdTjZCX
         r1n6fbo/xAy/7L8sJt470ntOxa3qcmZYPtEAYtmQztYpWmQ4uVcvGp8XNLvPkzbpY9ud
         AtAP2qnFypQe+TT541u9f8ZLuhkUdXrSoNL/fQOBS95x4R6E6P42tbI7943kzNkF/gF/
         ls4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OUbc9YmxzZyQuCfYvCcWLpHnYb4bvtYeu1C4sFcAeps=;
        fh=wsCSV+m6Ml5o3gO4HT3v0hKSJzcpslc9NFmdyt9OM3I=;
        b=fnWir51owVkajQ46Hiw9uRAJ95vh3cSg+Bp7RbaF8zfxMa6I5+ltEJbbpmOP25PT7u
         0N532P3h38rIsCHPVxq9kfjIpJL4L511VbJmzosr9hePMwkVpsXToFSyp/w7cpidYBs+
         lcjfoWlohb8J/8jqkpT2pSBY21qREnvV7MVGcbaW4kfNc5xk+mxwczJciMRZf4P9xHmb
         DFarxkT9UoLTgZwvhwqFkPToDF7LTuLLiqj+ubrKtmdP1R/Kj+VXaBW1OYj45xZLGB5j
         gqXu1PsRoXcyNKWhS0tx1T8s1ziPJHYvpL4xpi5krSgShzJRrk5RA1sPxfNXeamz9ZGx
         xBAA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769693778; x=1770298578; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OUbc9YmxzZyQuCfYvCcWLpHnYb4bvtYeu1C4sFcAeps=;
        b=LN+IYv1MG3zFFG/K8g2dkpyYfC206LycGApFA8t6yTnsJuLOf+kK+l1IlCHrSjL097
         ec1ns/5J8lKYlAM673AMLQWsOlWB1EsU6ld4+FDc29OKmTIzJyW/fYLNVZTMNeD7/Swy
         5E4RVKytmjC6b6RG0R3TkgOhkroQH3RUnRSDg8dmLeAxyL31/SYh6NvK+aYexP8vTPkd
         oCqy04hXmONM5wq5S8A5nGElXJcfB8aJDlfDAN31sgeap6T4E/DSjjdEuC9hsvgEVaN7
         x//FblpA6jbSoC2YV+AN5h5j2E0BwlzBgcawwI6+cz3YVcFwxV0lbZpDrT/jtvZd1zud
         p8Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769693778; x=1770298578;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OUbc9YmxzZyQuCfYvCcWLpHnYb4bvtYeu1C4sFcAeps=;
        b=uJJnZaEJ8NmHJwfFiW+FCJzegXJjnLgtirUqSfERnk4yYPQAEmV7jWUtaFzDXAC75U
         mbiB1Gk3ESoS8ZPFqIo7uVvOPvo92J2Amtwn2VARPUaFol/dxxfcA+vPf3ZPY6t+CYMQ
         e4pOZf3WZGwNYLbrx9sbj0t07sE/iKyIQYtYtFosn1ySwWKoK3ib0QGESQMNzm4baKrR
         oVdjijAyP0sT9ji3JHCz8rvXDe0yuIO7CyrKSel+ttaVbC5N2kU7/98biY5pXilC0O9Y
         3pnBjn04MbawwM3Fd6Erpmoc2gepcOq+twrY4PG1kVeUHRZXgy8niFcQDNB1om3gs9sZ
         nSFg==
X-Forwarded-Encrypted: i=1; AJvYcCUcd+PtbO8VyNqVzetzpmTEuLkv4XtI8KM4ipxoI4RnJiwqdf2DZ35lgB8d8QLTZHuLS5Fvl8u6VmQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzMFhpaGioXi/7IoowAgfOY5h9q6BwI2SsRUPnSoDnDCfU8Us59
	6limaf7ogdRa5vmXvpgxFAFAgUKJE0ASKQ1ykbpN8FKxsp9ZQp6NZT+DPMuNNvFcQbglbpF+J/I
	QiSjJr1GqRgXLuw1YHTiEEuU1ft5mvgB30nKFTUAmHQ==
X-Gm-Gg: AZuq6aIIcxOylfi5VMoV97hiSrodk61ODDjZ+WY40580yo0YaWwiY/1eUo623ypF7Ap
	aTFaEUDxW2DN9trZ5QQBqAhh/kNWvppcbm9z14OYFcQDklgqgwDMVGRlczwiRTaHoDyWVkv/KWb
	/Xtx3B3YqrHAkO/qa652V61xWhbbkB4SvB5oR9u6fkOWE5FSd0UJiA/jKscLgRHjqgr+/W3okyi
	ellRIOSdgPGZ2m6Pwj8f/Lyhr6YTDtECTVy9ZoiB9LMkUKjWLUcR/oJy4IXXGMHsOUfTQidmY5z
	rdOXBrL2PlUcO4DsbMYNOw5o
X-Received: by 2002:a05:7022:b8f:b0:11b:923d:7753 with SMTP id
 a92af1059eb24-124a005f58amr6177136c88.3.1769693778067; Thu, 29 Jan 2026
 05:36:18 -0800 (PST)
MIME-Version: 1.0
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-3-vincent.guittot@linaro.org> <aXsuRTZUUnw0kdzV@horms.kernel.org>
 <CAKfTPtDfnpzq2CB-isVzvh1ZCWo7kit9KRJvVGoU1C3zZTgdXw@mail.gmail.com> <aXtfVUb0eLwP4R28@shell.armlinux.org.uk>
In-Reply-To: <aXtfVUb0eLwP4R28@shell.armlinux.org.uk>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 29 Jan 2026 14:36:01 +0100
X-Gm-Features: AZwV_Qg3uPvaKNdmIviHyRFKK8XsxTqMLqCrJ58tO3_TcY5z3DRE4t2Ah-LnutY
Message-ID: <CAKfTPtCiJcNOdoddZN5N1dKHXfUJBe0=zeWfZ5uENoXDvbMnpQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] phy: s32g: Add serdes subsystem phy
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Simon Horman <horms@kernel.org>, vkoul@kernel.org, neil.armstrong@linaro.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, 
	s32@nxp.com, p.zabel@pengutronix.de, ghennadi.procopciuc@nxp.com, 
	bogdan-gabriel.roman@nxp.com, Ionut.Vicovan@nxp.com, 
	alexandru-catalin.ionita@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	Frank.li@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_053621_154397_4EEB877C 
X-CRM114-Status: GOOD (  13.62  )
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

On Thu, 29 Jan 2026 at 14:23, Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> On Thu, Jan 29, 2026 at 02:01:13PM +0100, Vincent Guittot wrote:
> > yes, the usual pattern is :
> > - phy_set_mode_ext()
> > - then phy_power_on()
> > but I can add an additional check
>
> Please read Documentation/driver-api/phy/phy.rst section "Order of API
> calls" which suggests phy_set_mode_ext() after phy_power_on().

Fair enough.
That being said, all pcie drivers  that use phy_set_mode_ext(), call
it before phy_power_on()

>
> Having different requirements for different SerDes PHYs quickly becomes
> annoying for users of the SerDes PHYs.
>
> E.g. I'm trying to add SerDes PHY support to stmmac, which is used
> across different platforms. Having all SerDes PHY drivers behave the
> same as far as their PHY API calls are concerned means that the whole
> point of having an abstracted interface is maintained. Otherwise, it's
> completely pointless.
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
