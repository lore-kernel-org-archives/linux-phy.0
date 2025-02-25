Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FC17C021B2
	for <linux-phy@archiver.kernel.org>; Tue, 25 Feb 2025 12:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvbOO63T0SSgvqblVw/B+glBEj6Q1RJYN9nXUyfj0eI=; b=sxxijMFCy7lrBg
	BntarGjIT1It4TKQJ98QeL0wZU8blj1of+tUSdX8YWqgkIrK2KLU+xSxrxVEI3bOku0qniZgstKDx
	+s8ByMeVNQ1UMgvdRUnuxK/2sLtIAYRIICiWE2czlElqYgtfytNvgSHnuExDpVm0fOuAfAjR7MZdn
	y+HEOOtmFb4ZYSCvCdXwNrHmr1pfVBsL4NVIT/Varyqvo5clSXrv2zQ7tWCNnA5o0QNAdxWCOL5eZ
	ARTnrm07iN5uhNN3oQPsCbpPbaiNG92VGyE5iWAGXpr4GAvpi5AFjdNeLkl+3QU4tgYqaGZG9sjma
	uafqhlwDJkESVFQ0tTVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmtzF-0000000HCiA-1AUw;
	Tue, 25 Feb 2025 12:24:33 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmtOo-0000000H5Gr-403x
	for linux-phy@lists.infradead.org;
	Tue, 25 Feb 2025 11:46:56 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5452ed5b5b2so5495414e87.0
        for <linux-phy@lists.infradead.org>; Tue, 25 Feb 2025 03:46:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740484013; x=1741088813; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ts4A/ttxPZ/L49bXy7EOSBKD/ukxratjzN45EB6TnCM=;
        b=aGkkYvRa8jJjsNZVAmfL6DoEuSwR+/FUdbZcfgTytblWXouErfvA4ZugeG9ue2nzQW
         ZTVUuo/oYbCCOF7ZpzhLkJNWl8coZ5P3h6aodJ+MCKGCaWFca23gOlH65m51zcrHMA0h
         L46CYzrrOgd18ezaXFQy0V4OxFurcVYPjZnTE0pWUEFRs3zOSsvOi5971xQdGpDFn0hH
         z+JBQ6S9fcyLk3mTikbefBzT8JcCfveZGHTQH9aWOaTDIVBbStRGGNzTQVym3I2rDQ8u
         kPWyLFDcSzhNA6PliGeDX/NA2zfntWRoP3DrLakwqxqNQxkXxgZBuduhoFVIg8M/VX/n
         Ktlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740484013; x=1741088813;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ts4A/ttxPZ/L49bXy7EOSBKD/ukxratjzN45EB6TnCM=;
        b=f7DTIvsWexxgPYWRa6prcn/x6LRwVkFBx26+3ztw3uXpZhWcaMG36/4A+av7ngrL0t
         fqaBbqcwLbsRxnu5+FqMkG3CEciCJvaCv5x2xwS41C0E+Hpst0/+d+VQvzmEfG3gs4at
         bDdgnizB70Zr7nWVqkXcfHTl5UxizVlIZKOufvmif/W/1kyN3yAtH3o3NqTwbYlYsr8i
         e5ZAjKv3fJoRx5Hd9kBqjDaYI7VVw147Q9gLDpM650zsvMOCoGZDZHHCYk3WWj7rAriJ
         o6TDo97j3Xo9tY0cYT/02IEtdiDARzUcaVISAB0NlT1lhV0JHZZibDUe0hJpBhQkryfd
         eSAw==
X-Forwarded-Encrypted: i=1; AJvYcCX9CG7ImcreRtoYIRrJMOUGTGuvdGUpYEBQSXkuD+PMHEQYNNehzCoBP8NofHnxQ6KkSgCDdToNyFw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwAUxXt93KaIYtmUCC4i3DsfTUZbt5jT11OAKDofOVaSj9wRtbD
	WB8EJ3YzgfPrbvKRu3dG3twfKOmXeVxmBMwRNF6mKBl4+8V8PN1FQE1xgCTrOsg=
X-Gm-Gg: ASbGncsXTRnCAGtNToNkyAkAKi/O1eONa6ZuTCPNFsnEnPLM3hFnASrB6sdSXTa1QHo
	vNvj9NLcuuXtOW3a2BfBqR8JuyX1vJ2ScoVZdccQ1iq7B88jZbaoXvXy4mFOxJ6aZogoltkNzxn
	uVCya+EDaCswpRVIr+sIc3MGAVTyPcs1Cwl0/hLfloUXzbpw3BzrxHKlxlFHGf7KbFcYOrefNyS
	J95/08wzdwmCTO0WZuDdJg8TNcx4UhAiZtLqf/RBXKZb4A4oL7172yPJ0EerS13dutAzGu5Se5U
	azySsaEqVJ52VM2SfOOuMe3cXNNEIa/EXoLo0hwiR232wMlWeF0WTHC7YuAELBYfCfcdunD1X4U
	9MROA3g==
X-Google-Smtp-Source: AGHT+IHUcQBC16oXfmvyIM7koTL1imeYmCyXP4Cq4nkgukEO51aAQvQvv+5NeosCoPqAnavazJ8nQg==
X-Received: by 2002:a05:6512:15a7:b0:545:16d3:3bd4 with SMTP id 2adb3069b0e04-548510eda44mr800752e87.53.1740484013276;
        Tue, 25 Feb 2025 03:46:53 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514efc90sm158425e87.133.2025.02.25.03.46.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 03:46:52 -0800 (PST)
Date: Tue, 25 Feb 2025 13:46:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	"Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, vkoul@kernel.org, 
	kishon@kernel.org, p.zabel@pengutronix.de, abel.vesa@linaro.org, 
	neil.armstrong@linaro.org, quic_devipriy@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
Message-ID: <zppwzqdi5xbggurbqho6ivuorvlubldpjw3pyw2fdgrap4nrhp@5otsko6o5cv3>
References: <20250220102253.755116-1-quic_wenbyao@quicinc.com>
 <20250220102253.755116-3-quic_wenbyao@quicinc.com>
 <20250224073301.aqbw3gxjnupbejfy@thinkpad>
 <7ffb09cd-9c77-4407-9087-3e789cd8bf44@quicinc.com>
 <ea5de507-1252-4ff3-9b18-40981624afea@oss.qualcomm.com>
 <20250224122439.njrcoyrfsisddoer@thinkpad>
 <eea55dfa-3dd3-488b-958c-cd20e18a7d7d@quicinc.com>
 <20250225081744.3aprpztylrdgs2cl@thinkpad>
 <4a672888-a90e-434c-b494-bb58b91c99a2@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4a672888-a90e-434c-b494-bb58b91c99a2@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_034655_003593_0357FDB5 
X-CRM114-Status: GOOD (  43.31  )
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

On Tue, Feb 25, 2025 at 06:08:03PM +0800, Qiang Yu wrote:
> =

> On 2/25/2025 4:17 PM, Manivannan Sadhasivam wrote:
> > On Tue, Feb 25, 2025 at 04:06:16PM +0800, Wenbin Yao (Consultant) wrote:
> > > On 2/24/2025 8:24 PM, Manivannan Sadhasivam wrote:
> > > > On Mon, Feb 24, 2025 at 12:46:44PM +0100, Konrad Dybcio wrote:
> > > > > On 24.02.2025 9:46 AM, Wenbin Yao (Consultant) wrote:
> > > > > > On 2/24/2025 3:33 PM, Manivannan Sadhasivam wrote:
> > > > > > > On Thu, Feb 20, 2025 at 06:22:53PM +0800, Wenbin Yao wrote:
> > > > > > > > From: Qiang Yu <quic_qianyu@quicinc.com>
> > > > > > > > =

> > > > > > > > Some QCOM PCIe PHYs support no_csr reset. Unlike BCR reset =
which resets the
> > > > > > > > whole PHY (hardware and register), no_csr reset only resets=
 PHY hardware
> > > > > > > > but retains register values, which means PHY setting can be=
 skipped during
> > > > > > > > PHY init if PCIe link is enabled in booltloader and only no=
_csr is toggled
> > > > > > > > after that.
> > > > > > > > =

> > > > > > > > Hence, determine whether the PHY has been enabled in bootlo=
ader by
> > > > > > > > verifying QPHY_START_CTRL register. If it's programmed and =
no_csr reset is
> > > > > > > > available, skip BCR reset and PHY register setting to estab=
lish the PCIe
> > > > > > > > link with bootloader - programmed PHY settings.
> > > > > > > > =

> > > > > > > > Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> > > > > > > > Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> > > > > > > Some nitpicks below.
> > > > > > > =

> > > > > > > > ---
> > > > > [...]
> > > > > =

> > > > > > > > +=A0=A0=A0=A0 * In this way, no matter whether the PHY sett=
ings were initially
> > > > > > > > +=A0=A0=A0=A0 * programmed by bootloader or PHY driver itse=
lf, we can reuse them
> > > > > > > It is really possible to have bootloader not programming the =
init sequence for
> > > > > > > no_csr reset platforms? The comment sounds like it is possibl=
e. But I heard the
> > > > > > > opposite.
> > > > > > PCIe3 on X1E80100 QCP is disabled by default in UEFI. We need t=
o enable it
> > > > > > manually in UEFI shell if we want.
> > > > > IIUC this will not be a concern going forward, and this is a spec=
ial case
> > > > > =

> > > > I'm wondering how many *special* cases we may have to deal with goi=
ng forward.
> > > > Anyhow, I would propose to atleast throw an error and fail probe() =
if:
> > > > =

> > > > * the platform has no_csr reset AND
> > > > * bootloader has not initialized the PHY AND
> > > > * there are no init sequences in the kernel
> > > > =

> > > > - Mani
> > > Hmmm, regardless of whether it's a special case, we can't assume that=
 UEFI
> > > will enable the PHY supporting no_csr reset on all platforms. It's a =
bit
> > > risky. If we make such an assumption, we also won't need to check whe=
ther
> > > the PHY is enabled by UEFI during powering on. We just need to check
> > > whether no_csr reset is available.
> > > =

> > I am not supportive of this assumption to be clear. While I am OK with =
relying
> > on no_csr reset and bootloader programming the PHY, we should also make=
 sure to
> > catch if the PHY doesn't initialize it. Otherwise, the driver would ass=
ume that
> > the PHY is working, but the users won't see any PCIe devices.
> > =

> > > But it makes sense to check the exsitence of PHY senquence. How about
> > > adding the check in qmp_pcie_init, if a PHY supports no_csr reset and=
 isn't
> > > initialized in UEFI and there is no cfg->tbls, return error and print=
 some
> > > error log so that the PCIe controller will fail to probe.
> > > =

> > Sounds good to me.
> I'm wondering is it necessary to add this check? In current PHY driver,
> for PHY that doesn't suppot no_csr reset there is also no such check.
> If a PHY supports no_csr reset and isn't init in UEFI and there is no
> cfg->tbls, the worst issue is link training fail and PCIe controller will
> also fail to probe. Adding sucj check seems not change the result.

Failing the training is a random error which can mean a lot, e.g. the
missing voltage rail. An explicit check is beneficial, it helps
developers (and users) to better understand the reason of the failure.

-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
