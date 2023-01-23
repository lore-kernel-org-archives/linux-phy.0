Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B3EEC38142
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 12:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDp6N/ByLkbJlC/jAkHJi16DG3hPMj+lu7fxmTNog3Y=; b=xjiHADdJYlQFPc
	U6hNLBdoMfqqhVVDQGXibCgwWOFDuLBDD4q/n1YWvovjyNbgdLSU43YZEFWOvOjTO/LE8IJ+d+ING
	GtNKN56Tfzi1+3FXyBkuTNE6/Dm3HniKISXrcXDyBwCVpqfcPB4d+ZZ1ccaE1/wpVoJoZ7zcFSSsZ
	amAzvXq8EbNNUfBarwTLdl0R0m8K7E03+8mRXskroX31dG7J+/m/0LePctmYOYg9PcNcXEeWlqgrV
	htQ05+OK5Ngt08m9QUxlcOvSWtzeb4i7EQG4Ykjah+wTvrBJkOfBwj/MplWCWc9hOiHpaQ0kDTCQN
	7DiY8RIXEgBXkGecslFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJvXr-00H1ab-Uy; Mon, 23 Jan 2023 12:03:27 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJvXo-00H1a8-QX
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 12:03:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1D14F60EA7;
	Mon, 23 Jan 2023 12:03:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 737EEC433EF;
	Mon, 23 Jan 2023 12:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674475403;
	bh=2vRkJy1jPVn+EmgWE8R3/Pd6by7UgXua8Abm0Bc7PCw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TWZHlRqE/XIb8+Uk+e2IeM6ZAogxeV6RThWrJpfxV7YKO718XgVecGuAQrk6HsIBn
	 Jdn4M95qDKHTE5IIw/3DYEeIVi0MPCJtUCrmJGh1vtkR7ZAdRmQyT2LxBp9C2ETyY+
	 U/HlL0pFntlEXTZkuRoDuXmOst/wVSm93dSbBXGlcYEaKU/otRhzqTpjc6HWvylsAN
	 VpbrOjlveFNmCOnwumkr2Wn1LBkhoaIuj8C2o/sY4QRs8jEy7vK91OJBDX01AdVoxK
	 DoPcTH8lPqKIUM9WbyvLhxuynDzUbI7NHyFNvU0/5Uk5qT39Y9s6az4ZVX/HaF9sot
	 EwwqbAp+Wp55A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pJvXk-0001zc-Rh; Mon, 23 Jan 2023 13:03:20 +0100
Date: Mon, 23 Jan 2023 13:03:20 +0100
From: Johan Hovold <johan@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] phy: qcom-qmp-combo: Add config for SM6350
Message-ID: <Y853iEBf1e7uh/wX@hovoldconsulting.com>
References: <20221130081430.67831-2-luca.weiss@fairphone.com>
 <Y6xP4YRAp68TfxFi@hovoldconsulting.com>
 <Y8BIX+js1ircJyb9@matsya>
 <cf968a25-02f7-d402-530b-eb379b707e54@linaro.org>
 <CPR2LS3SJQ3I.Z7UY505COG3@otso>
 <CAA8EJpoOMMALHz7ysft6KvQaYhGWPD+xZiUjOTrC8CA_y81n-w@mail.gmail.com>
 <CPX2VVT5EUDV.2LH6VI2586F02@otso>
 <Y85WqDrGXAXp7gS/@hovoldconsulting.com>
 <a18359f8-6495-dbea-2323-8ab73bbfc472@linaro.org>
 <CPZJ4F39LES0.ANG4EP8EUFI7@otso>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CPZJ4F39LES0.ANG4EP8EUFI7@otso>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_040324_935034_882F78FA 
X-CRM114-Status: GOOD (  16.07  )
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

On Mon, Jan 23, 2023 at 12:22:32PM +0100, Luca Weiss wrote:
> On Mon Jan 23, 2023 at 12:15 PM CET, Dmitry Baryshkov wrote:

> > There are two SERDES regions. One used by USB part of the PHY (at 
> > 0x1000) and another SERDES region used for DP (at 0x2000). As Johan 
> > described below, vendor kernel handles the DP regions in the DP driver. 
> > Possibly this caused a confusion on your side.
> 
> Ack, I think I got it now. I also see the registers used downstream
> now, e.g.:
> 
> techpack/display/pll/dp_pll_10nm_util.c:#define QSERDES_COM_LOCK_CMP2_MODE0             0x009C
> 
> So now .dp_serdes should be 0x2000. Do I need to change anything else
> also? I think not?

You also need to add new dp_tx/rx pointers to the offset struct and use
those in favour of the current ones if set. I think we hashed that bit
out in one of the previous versions of this patch.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
