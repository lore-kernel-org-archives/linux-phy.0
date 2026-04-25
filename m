Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64037FF885D
	for <linux-phy@archiver.kernel.org>; Sat, 25 Apr 2026 10:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgD1iV4LomxQOW0USg7ncydT1rZnM62S+aXqvO9fTRY=; b=wP2XGB9i4gbGGI
	oDc+AKZ4PVR19ovjqma/EBfhMYcDw+pJ6tX5otmPRoVAI093F8fofcjaQKpdQPUdc0Uuhx0LKYtAi
	YX/C6acx6TpkkzojYKLoA84QZMkuzTrT4w103mwAG96FYc877IHEYrsJ4lU0jqAjrJHkRbq5sYQzQ
	v7YBCOaU+rdtNZiowyItTlwz2z4UxoI3Yy2Ke1oABPODGn61UBE8lr8WI6SURKp38P2k63XbBgEan
	CrHdg+6tF/+d8Q1Mih5LmidS0JuLR/KdlMFnPRC323GwKH0My/n2N5XLLZOGje4v3IroBDCcsCRlz
	vcSVaj8Vy+uiA7nd1zzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGaHG-0000000ELVk-2uLg;
	Sat, 25 Apr 2026 10:30:22 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGaHD-0000000ELVO-3trk
	for linux-phy@lists.infradead.org;
	Sat, 25 Apr 2026 10:30:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8832E43B28;
	Sat, 25 Apr 2026 10:30:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1C5BC2BCB0;
	Sat, 25 Apr 2026 10:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777113019;
	bh=9W5XQ9Y5FnZ1fV0MTfPITY0G+g8luMutrskj6zjzmUg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Kf9xkQ6ZfWoZnl2xRqQ1+0kpKaUs+TrzltAoI1+jWzy4KFfWQqejw1ecPmDObirlq
	 9xLrxCaKgNoKNaT9QU+1aYcBisxgJofb/DCH8EqdMUAYQ1qEiNqdP2rBut8YA3zvnG
	 wEUfhsVDf2rdocKV8H4WPc36++z2KwGJvE5M5pDpjhsOHjuC5SGgSek6U5t6l6C06F
	 dp3TjjtKje/lh7f/mOlZiF5HRTtyE6AuKTnUaVVYMDOVgKG74arYaVc5MG3NYCJwJ0
	 KI4JsHTRfpnl+tMaaCP8K4vN4r9KRyUz08nBiMI5joSJWQGtIXNYSQsM2OZhCoY85A
	 XVyv+v+W3E5tw==
Date: Sat, 25 Apr 2026 12:30:17 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Cc: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	robh@kernel.org, neil.armstrong@linaro.org, gregkh@linuxfoundation.org, 
	dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com, abel.vesa@oss.qualcomm.com, 
	wesley.cheng@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add
 Hawi QMP PHY
Message-ID: <20260425-vigorous-olivine-tortoise-ed9fd0@quoll>
References: <20260425070002.348733-1-ronak.raheja@oss.qualcomm.com>
 <20260425070002.348733-2-ronak.raheja@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260425070002.348733-2-ronak.raheja@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_033019_989469_C95A9FC4 
X-CRM114-Status: UNSURE (   4.95  )
X-CRM114-Notice: Please train this message.
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

On Fri, Apr 24, 2026 at 11:59:59PM -0700, Ronak Raheja wrote:
> Document the Hawi compatible string for the QMP combo PHY.

Not compatible with Kaanapali and/or SM8750? That's quite obvious
question thus commit msg should briefly answer to it.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
