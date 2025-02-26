Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B78AC021A4
	for <linux-phy@archiver.kernel.org>; Wed, 26 Feb 2025 05:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwWcZ2rFfZPt93CWpQv6scrXxPbESjB5k2UWMyd1h8A=; b=G5shw4LBZBvrY1
	JMTD1wOF8BK4bUIVrGlrZU9/zAPU3ReN3aXtS3YULUVzadwSsINvBeOxUU1/yJN1Ki0EVD8NkcfEK
	pp1QVga/zPDO2q61+a7jvDMRd0NMJckB2DflN3OlQI926xCqAGJfkYNc6amYwxZmU7QUTMECHj7Gv
	rWbzgzyOHlw+o7N6Z10l9bFUtr7RO2JVPQ+nil4L5buIPEMO68Q6qwvXoLXDLjivdIfzjqvoR/T36
	wIBKpnw8PJ36Ibg99m4m17OqHNFLi1GL5ATaJlr4RqlD1os8PlYj70WqviDLYnBZ43p/gXXLaDZjB
	/Tifspn43GiX80AwP/5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tn9pI-00000002QZp-2CIk;
	Wed, 26 Feb 2025 05:19:20 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tn9pF-00000002QZT-2gHj
	for linux-phy@lists.infradead.org;
	Wed, 26 Feb 2025 05:19:18 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5461cb12e39so6205054e87.2
        for <linux-phy@lists.infradead.org>; Tue, 25 Feb 2025 21:19:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740547155; x=1741151955; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zF9gFcyKZ4Btfiq3+cszj8NUyBbRLBvZ0lzqaTVmau8=;
        b=cBXb3qmRUoElFyWZ9+fSuskBx/kgpDi6pyRmcScxbtKRySx4mmwhzmelL8im45JhqK
         6l/gUL2uLQF67FQ4apc3EltxjTdnxUEe8EIfQ+EOHwmnAnPTpxWOvxs6C24h0sePgcxH
         S2BaHQWRsKoiUk4S7wFvgUCZQcJJT0SHQUB0WBYuId7V4QyQuzNg9ZYUJFq+T3twKtzt
         kXENr0bwaBa22zKNmEBaseS04/CdamJYjCuHJS/cLnWIOWxxbVPNEgzF/h6H0XEeuprZ
         XIdFUq9tRLORQ0bvgAsh00xkoTR6hAlyjeH1o0Kj5oNbEWs0VhS9CJV/21YCj256DH1A
         ybkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740547155; x=1741151955;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zF9gFcyKZ4Btfiq3+cszj8NUyBbRLBvZ0lzqaTVmau8=;
        b=VVqTwDzQPCnDO554frbgAE5h7P8WqUvwzmXysgZwHeBtsiAVP9SxLQMiuA32GpYIpS
         LLOU6GUSuGNsB/F4zJ9ujqyIC2hJE/Nw00DSDUUAUHfY+jqXZwxDTUp8UgId39e0FwTy
         6agOWMiB4nH3507DvLIq78QdD+6qEi1x6Tvw74q40zrxpvtJSSJD+dVkuO/cJGTp3Hi/
         F1JzTrgmhUle9NGMhBjfg//2A33TIosNa3LrVh/D/s3hDbioi+AG+ZrtYw/3f/MnXO5b
         H+65LL9WB8CWLgX/6b1eXC1EzPAZq0VcemwJxR/M3mimsEZ5sSvztqhlhcrgy1SCF1eO
         nnWg==
X-Forwarded-Encrypted: i=1; AJvYcCVA5VOIUdpiWn6iKzO2WjgN7wcqkiBWjwR/2leApzafvIuwERbxQwEWmznkdoHZC3Wxo1eiHywCckM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzj8OQbIQbgVO54BTIKsOqIhtc918W27GgXz5s92ZWRGpwTcEI6
	oS1Qtx9Pd1URMJPt9vJp60cYVe2H9TdQ83votplDMGdgR9YHFqVQNXSp7NLYF8I=
X-Gm-Gg: ASbGncvUVFrXqgxauqEqx0D8DDq/W8KjMYzEWhvfZ2hd2u+yBafhTMLMV68bHsd+Lbw
	VFH/EgPfhiWJ3OFLLoFRHVGB6mlpaBONPJDSBB6UFz/aKguFomyutfiN0lInWzngVn/lEODv4c9
	LinW/MA5+BnP0LNGj4v56zt2bbNg/lKvgZl/xO8bS0JhM+Gp3ER0MkQ2r5nMRXB4S0jq1KRze0K
	G+jEgA5qKjCfHipkYQVXz22dFSZroRbXFqO5O+ofDfrS1MLaols/2RWY189sLbqipbovxbk+GF1
	dQ3jc3YbXPme0lsAv7SktdwQKuS4oJCd2u1BWcign2ZHiJ3eZkVES/KrZin1OMfYRqLqMLliNH1
	OQ72mNA==
X-Google-Smtp-Source: AGHT+IHxPX3HbPicsOXhvRZbaE9MW4TbT5RH1tcAURZxDzAmkFlXwfGCZD0yRzM+p1X+SJrXmqCkLQ==
X-Received: by 2002:a05:6512:3049:b0:545:3031:b4d7 with SMTP id 2adb3069b0e04-54838edda6fmr8881336e87.6.1740547155397;
        Tue, 25 Feb 2025 21:19:15 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514efdf7sm341633e87.108.2025.02.25.21.19.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 21:19:13 -0800 (PST)
Date: Wed, 26 Feb 2025 07:19:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	"Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, vkoul@kernel.org, 
	kishon@kernel.org, p.zabel@pengutronix.de, abel.vesa@linaro.org, 
	neil.armstrong@linaro.org, quic_devipriy@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
Message-ID: <ophii26vvcogjtvktsexi6ffnug2wi5hjsppyb44uhypk43o5b@t4bbghgatd73>
References: <20250220102253.755116-3-quic_wenbyao@quicinc.com>
 <20250224073301.aqbw3gxjnupbejfy@thinkpad>
 <7ffb09cd-9c77-4407-9087-3e789cd8bf44@quicinc.com>
 <ea5de507-1252-4ff3-9b18-40981624afea@oss.qualcomm.com>
 <20250224122439.njrcoyrfsisddoer@thinkpad>
 <eea55dfa-3dd3-488b-958c-cd20e18a7d7d@quicinc.com>
 <20250225081744.3aprpztylrdgs2cl@thinkpad>
 <4a672888-a90e-434c-b494-bb58b91c99a2@quicinc.com>
 <zppwzqdi5xbggurbqho6ivuorvlubldpjw3pyw2fdgrap4nrhp@5otsko6o5cv3>
 <47f5ab83-d25f-4132-83a6-38236575510c@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <47f5ab83-d25f-4132-83a6-38236575510c@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_211917_705198_930F105A 
X-CRM114-Status: GOOD (  48.51  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, Feb 26, 2025 at 11:12:18AM +0800, Qiang Yu wrote:
> =

> On 2/25/2025 7:46 PM, Dmitry Baryshkov wrote:
> > On Tue, Feb 25, 2025 at 06:08:03PM +0800, Qiang Yu wrote:
> > > On 2/25/2025 4:17 PM, Manivannan Sadhasivam wrote:
> > > > On Tue, Feb 25, 2025 at 04:06:16PM +0800, Wenbin Yao (Consultant) w=
rote:
> > > > > On 2/24/2025 8:24 PM, Manivannan Sadhasivam wrote:
> > > > > > On Mon, Feb 24, 2025 at 12:46:44PM +0100, Konrad Dybcio wrote:
> > > > > > > On 24.02.2025 9:46 AM, Wenbin Yao (Consultant) wrote:
> > > > > > > > On 2/24/2025 3:33 PM, Manivannan Sadhasivam wrote:
> > > > > > > > > On Thu, Feb 20, 2025 at 06:22:53PM +0800, Wenbin Yao wrot=
e:
> > > > > > > > > > From: Qiang Yu <quic_qianyu@quicinc.com>
> > > > > > > > > > =

> > > > > > > > > > Some QCOM PCIe PHYs support no_csr reset. Unlike BCR re=
set which resets the
> > > > > > > > > > whole PHY (hardware and register), no_csr reset only re=
sets PHY hardware
> > > > > > > > > > but retains register values, which means PHY setting ca=
n be skipped during
> > > > > > > > > > PHY init if PCIe link is enabled in booltloader and onl=
y no_csr is toggled
> > > > > > > > > > after that.
> > > > > > > > > > =

> > > > > > > > > > Hence, determine whether the PHY has been enabled in bo=
otloader by
> > > > > > > > > > verifying QPHY_START_CTRL register. If it's programmed =
and no_csr reset is
> > > > > > > > > > available, skip BCR reset and PHY register setting to e=
stablish the PCIe
> > > > > > > > > > link with bootloader - programmed PHY settings.
> > > > > > > > > > =

> > > > > > > > > > Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> > > > > > > > > > Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> > > > > > > > > Some nitpicks below.
> > > > > > > > > =

> > > > > > > > > > ---
> > > > > > > [...]
> > > > > > > =

> > > > > > > > > > +=A0=A0=A0=A0 * In this way, no matter whether the PHY =
settings were initially
> > > > > > > > > > +=A0=A0=A0=A0 * programmed by bootloader or PHY driver =
itself, we can reuse them
> > > > > > > > > It is really possible to have bootloader not programming =
the init sequence for
> > > > > > > > > no_csr reset platforms? The comment sounds like it is pos=
sible. But I heard the
> > > > > > > > > opposite.
> > > > > > > > PCIe3 on X1E80100 QCP is disabled by default in UEFI. We ne=
ed to enable it
> > > > > > > > manually in UEFI shell if we want.
> > > > > > > IIUC this will not be a concern going forward, and this is a =
special case
> > > > > > > =

> > > > > > I'm wondering how many *special* cases we may have to deal with=
 going forward.
> > > > > > Anyhow, I would propose to atleast throw an error and fail prob=
e() if:
> > > > > > =

> > > > > > * the platform has no_csr reset AND
> > > > > > * bootloader has not initialized the PHY AND
> > > > > > * there are no init sequences in the kernel
> > > > > > =

> > > > > > - Mani
> > > > > Hmmm, regardless of whether it's a special case, we can't assume =
that UEFI
> > > > > will enable the PHY supporting no_csr reset on all platforms. It'=
s a bit
> > > > > risky. If we make such an assumption, we also won't need to check=
 whether
> > > > > the PHY is enabled by UEFI during powering on. We just need to ch=
eck
> > > > > whether no_csr reset is available.
> > > > > =

> > > > I am not supportive of this assumption to be clear. While I am OK w=
ith relying
> > > > on no_csr reset and bootloader programming the PHY, we should also =
make sure to
> > > > catch if the PHY doesn't initialize it. Otherwise, the driver would=
 assume that
> > > > the PHY is working, but the users won't see any PCIe devices.
> > > > =

> > > > > But it makes sense to check the exsitence of PHY senquence. How a=
bout
> > > > > adding the check in qmp_pcie_init, if a PHY supports no_csr reset=
 and isn't
> > > > > initialized in UEFI and there is no cfg->tbls, return error and p=
rint some
> > > > > error log so that the PCIe controller will fail to probe.
> > > > > =

> > > > Sounds good to me.
> > > I'm wondering is it necessary to add this check? In current PHY drive=
r,
> > > for PHY that doesn't suppot no_csr reset there is also no such check.
> > > If a PHY supports no_csr reset and isn't init in UEFI and there is no
> > > cfg->tbls, the worst issue is link training fail and PCIe controller =
will
> > > also fail to probe. Adding sucj check seems not change the result.
> > Failing the training is a random error which can mean a lot, e.g. the
> > missing voltage rail. An explicit check is beneficial, it helps
> > developers (and users) to better understand the reason of the failure.
> In the struct qmp_phy_cfg, tbls is not a pointer, we can't directly check
> if tbls =3D=3D NULL to determine if the PHY init sequence is available. C=
an we
> add a separate patch to change the definition from
> "const struct qmp_phy_cfg_tbls tbls" to
> "const struct qmp_phy_cfg_tbls *tbls" like tlbs_rc and tbls_ep, even thou=
gh
> this will affect all platforms?

Of course no. There is no need to introduce extra indirection. Checking
for qmp_phy_cfg.tbls.serdes_num should be more than enough. No matter
what, the PHY with a proper configuration tables will have non-empty
SERDES table.

-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
