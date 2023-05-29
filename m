Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C2D3C77B7A
	for <linux-phy@archiver.kernel.org>; Mon, 29 May 2023 17:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2q95IcwZBCAtXiW9oqAdIxjhP0qN3mLpN0rSic7gd6s=; b=4HobGNPVLM7P1R
	hT/4j3m3rRvdWgSuhW/IiEvEWYDAvdnM0QGHsdWqsA8f0vf9WQdPL1qhCfIHWBXb/geYXe9y4onGo
	M9DU3MbxiTs3gdIaU05g98bTPlj6aLb8GL5OXeVhId1Fm+wa8NHMD+nT7mawMjFKRZm7W5E4/wv/t
	QqIjMuqYWa5i3lKNpzRXIDDD8LwUeDCN0BvRS1eHHcTTLagFCcDwUckw4QCI4icR/iALiE1ZpIPZh
	G0hH3XGn0T4BAbYVtjcOBAg+f2aH62XEv/UfpCdg4B460ITsdAFyw+Bd/twSPfgjFJYxWYshs8hA0
	wn5vS61+kY46JlnmkNyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3h04-00BKE7-2u;
	Mon, 29 May 2023 17:49:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3h01-00BKCs-0j
	for linux-phy@lists.infradead.org;
	Mon, 29 May 2023 17:49:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 57E45615B9;
	Mon, 29 May 2023 17:49:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5210C433D2;
	Mon, 29 May 2023 17:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685382578;
	bh=w6IvOvi08pEaUqTJh5LkFUiOSX8C9pAinrnPh+Qkx/Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=M35iP0f1ZNqSw9RuP/Qwdpofhhr4ANuwhjhUGCsPjDVavvPGY9TcevIa01mX3Fb0Q
	 xRvsBSGd96SbsEdBeVcO0v0mxC2NmuNPwkGyZD6b7ggZW29T99f8ug2Vj6gs2zbs1u
	 Ll/D7mGtpgthzi8Kgh2mz0H9Sj4ofamaeNB9w9Td9IbTn87S2eyWSL1s4shEynUpWK
	 SO+CrEPcZ8BcfMB+LOwJq2B2s9HEBAjRlNX9ozKs+cdhQTMsf5/cKoBNCtfqY49JeN
	 yF9NW3gZt7sTlCz12aaVnvPhfvd9MxP2UeW2feYrneEygPrNf2CCFbSNmwOSUHGWYx
	 umiEbMCmWhHtA==
From: Bjorn Andersson <andersson@kernel.org>
To: linux-phy@lists.infradead.org,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski@linaro.org,
	dmitry.baryshkov@linaro.org,
	agross@kernel.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	bhupesh.linux@gmail.com,
	konrad.dybcio@linaro.org
Subject: Re: (subset) [PATCH v11 0/4] Enable USB SS qmp phy for Qualcomm SM6115 SoC
Date: Mon, 29 May 2023 10:53:22 -0700
Message-Id: <168538280003.437034.14219843180641577263.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230516150511.2346357-1-bhupesh.sharma@linaro.org>
References: <20230516150511.2346357-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_104941_330171_A7D4FCA5 
X-CRM114-Status: UNSURE (   8.54  )
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

On Tue, 16 May 2023 20:35:07 +0530, Bhupesh Sharma wrote:
> Changes since v10:
> -----------------
> - v10 can be seen here: https://lore.kernel.org/lkml/20230502053534.1240553-4-bhupesh.sharma@linaro.org/
> - Rebased on phy/next, as Vinod was seeing rebasing issues with v9 while
>   applying.
> 
> Changes since v9:
> -----------------
> - v9 can be seen here: https://lore.kernel.org/linux-arm-msm/20230501192432.1220727-1-bhupesh.sharma@linaro.org/
> - Addressed review comments from Dmitry on v9, regarding register size
>   and pcs_misc offset handling. Also collected his R-Bs.
> 
> [...]

Applied, thanks!

[3/4] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
      commit: 9dd5f6dba72928e1f16b259fb1c984f80bfa4120
[4/4] arm64: dts: qcom: qrb4210-rb2: Enable USB node
      commit: eaa53a85748d58c4398c5c9acaa8d01d92adbb67

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
