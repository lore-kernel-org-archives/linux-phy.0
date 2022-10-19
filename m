Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10A4CC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 13:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UI2Hv7x1IxSPJgNf0lCOkJSIVRWos6qBjGVkXuTyjng=; b=R2poegIo5ueJej
	cYNARpyf8INNcovtxXJCZ3oy3WpfDX4tet3zVHEFM+j6HENU2GDlbn3HT3pbi269W3U2zm0GI1v8v
	M6byXv7Wc5H5md2pIVNIff6OwULs+UVmLN6kMmnf4F6Xm4dCqh65SAT4GWB4/FsL/F8fi276rSu0e
	kS0T9G/WIN+alF6pE3wAG6EPpdF+McyKRHyGhdw5tmDg8ZIfVcPd3bHpArMm7pIul+wNp82D6dhSb
	t9EFXMtJuN/k5s+DyI6WUxCSH7S1BNR7XebSQrZ4QYPJ5936fLyogBLKO8o06xFZ2INoOrNJIc0/x
	gCwYCUIHVIplxfhjdGMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol9U4-002JlT-Gf; Wed, 19 Oct 2022 13:51:48 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol9U0-002Jin-MD
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 13:51:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 8BE74CE20F4;
	Wed, 19 Oct 2022 13:51:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02F4FC433C1;
	Wed, 19 Oct 2022 13:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666187501;
	bh=jrTe3eMGW5ffNFtDxkHTlei5AgA/Ul8ndLjqKSldIso=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pyi9TrqIWBfDG8wOv1p0sfjY/8fUV82A51FEx8fgY7z1jjdXnqBj6gUtvN0ZeglC1
	 Gmjtp1uoz/bFzZweXV99Y/82hK0HWoxzY8nH2j2QZ6xThw160k1P2WGTJlTfe5By2R
	 WpQGE4MXa5UtcdWK7bU1jj7/ZX4a/gV3WchLmQvOpPVlnb0DWgRS+BEU5ZMpegHyRX
	 ti1vX4DKlOVGQucE20mVjMj2zf9/k8GSi05iWTkV5ce39r4A1COk5uCxq3HdUijNXC
	 tOAv6DLGnvy5s133JuuG4Qs1497XHlQqv8p09/hOCRjJ1I17DFsf9jcI0EJEbOPoSW
	 1r+nD/20LJUFw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ol9Tk-0006YN-GW; Wed, 19 Oct 2022 15:51:29 +0200
Date: Wed, 19 Oct 2022 15:51:28 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 08/15] phy: qcom-qmp-pcie: add register init helper
Message-ID: <Y1AA4ISrWQbOoaju@hovoldconsulting.com>
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-9-johan+linaro@kernel.org>
 <0f1fff20-772f-c4d1-f803-f1824ef23780@linaro.org>
 <Y0/63eH82t2zXFi5@hovoldconsulting.com>
 <0b0c752c-1f3d-bf5a-ade7-e2f8acac92a4@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0b0c752c-1f3d-bf5a-ade7-e2f8acac92a4@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_065144_935963_39D7108F 
X-CRM114-Status: GOOD (  19.24  )
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

On Wed, Oct 19, 2022 at 04:44:33PM +0300, Dmitry Baryshkov wrote:
> On 19/10/2022 16:25, Johan Hovold wrote:
> > On Wed, Oct 19, 2022 at 04:12:02PM +0300, Dmitry Baryshkov wrote:
> >> On 19/10/2022 14:35, Johan Hovold wrote:
> >>> Generalise the serdes initialisation helper so that it can be used to
> >>> initialise all the PHY registers (e.g. serdes, tx, rx, pcs).
> >>>
> >>> Note that this defers the ungating of the PIPE clock somewhat, which is
> >>> fine as it isn't needed until starting the PHY.
> >>>
> >>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> >>> ---
> >>>    drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 51 +++++++-----------------
> >>>    1 file changed, 15 insertions(+), 36 deletions(-)
> >>>

> >>> -static void qmp_pcie_pcs_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
> >>> -{
> >>> -	void __iomem *pcs = qmp->pcs;
> >>> -	void __iomem *pcs_misc = qmp->pcs_misc;
> >>> -
> >>> -	if (!tables)
> >>> -		return;
> >>>    
> >>> -	qmp_pcie_configure(pcs, tables->pcs, tables->pcs_num);
> >>> -	qmp_pcie_configure(pcs_misc, tables->pcs_misc, tables->pcs_misc_num);
> >>> +	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
> >>> +	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
> >>
> >> Nit: could we please keep it as `tables'?
> > 
> > I considered that but found that the longer identifier hurt
> > readability so I prefer to use "tbls" here.

> I'd say, it's up to Vinod. I'd prefer the second version.

Ultimately yes, but as the author of these patches I do have a say here.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
