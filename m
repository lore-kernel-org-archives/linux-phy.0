Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E2C7C6FD18
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 13:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1beC73iOFfoJGDmuCTa7ZsdsuwY4QIy6+LzG4AC8ZY=; b=LMjZ+NAJSaGkUD
	Bt5UwSCfLbbwBTu9waT7nx3PyV1DLITuoW+cm2nDKqMegYrZp6e141xp9lM0u6Qb2ECbvHR2xg79Z
	kvSbDtzcXZvx6kHHBWi4IL1CTFvWJ5P+xWUh4SeQCUo9Pth99FFvDaWgpNEIosu1Nucmqe4uOOyC3
	Ht0Y7S838T6nRM6wJ0JepPlGEgiSoMOc/FnXMh5Ut+VUmf6pm3yoZ7YcHmdYmC0o+9n2CRGrw/6sP
	r5BaiE3RTY+l8Za/vlPRhq6d4pfVxhNxv9iPi/YVpjb7aI/McOS8wBT9kJY6ywIo4Lk57U1LLvMjk
	Syujy5PmDP2Qz8mm4K8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piF8F-007aLP-0J;
	Fri, 31 Mar 2023 13:49:31 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piF8C-007aJj-2v
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 13:49:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 8487BB82FD2;
	Fri, 31 Mar 2023 13:49:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DC0CC433D2;
	Fri, 31 Mar 2023 13:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680270563;
	bh=OY7p1Cg5NMe0bHsGpPxy9czXfpy6BM+8Hv0XIz5hgas=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HIuwNiaqXO0V4AWht9OaL8rs/7EIFObwU57rlvDtdaV67kVXp3SqrRomURWCUvyff
	 H08Wfin0Ud5saTNmYSu2ExyFQR6hAWN55hXxTKJO4JwM18xl/RRZW+kEgoQycynqh3
	 mh1/Xj5c4bhsjdWxTs3PfjlDJexWNs5bi0qqey6pP1bbZOFphnX08cKgi44IzAJ0Xc
	 a6M8FcCbzxdrFSVcLiaZwSx/DOEmFY1Eg3Jwdo6Of91bDfLbMS/xfTJgUb4v4UtBJK
	 0hWLx4gcwPiFBaNmDLTpUWrns/ddaPU6VcWyouY80JIuzvstA/pF8wXPvr1HERC2Nv
	 R3xhhJO79n9PQ==
Date: Fri, 31 Mar 2023 19:19:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 1/2] phy: qcom-qmp-combo: fix v3 offsets table
Message-ID: <ZCbk3u2qBdjCnaC6@matsya>
References: <20230323144726.1614344-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230323144726.1614344-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_064929_105162_8AEF9E45 
X-CRM114-Status: UNSURE (   6.94  )
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

On 23-03-23, 17:47, Dmitry Baryshkov wrote:
> SM8350 and SM8450 use qmp_combo_offsets_v3 table, which doesn't have
> PCS_USB offset. Add the usb3_pcs_usb entry to program correct registers
> while setting up sm8350 and sm8450 USB+DP combo PHYs.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
