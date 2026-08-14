Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92881C5B572
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 10:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PW7lgpls83raXYLZz/Ir2lszMuUrEXFJZuDESS0wtpE=; b=YR5aXmrQnlhGap
	fmOae+SZh85OROWqgoo3izWdWADafoTZzHzlZuacGhPslgMUnC8dwMDNiY3Q+IYJbIEzC4qsA7GpU
	28GLTqSiAV86T2f5h3hCbRd1+39TMg4J0Lb/JqvxHa6B0AGKhc9DFd1j8vx2w8Ptr3PpV4Q+RT0Zq
	ZPTa8kjzYYBzGOFdbSYoeERzbj7R6lGxFThs4xAZPAKHh4ss1wpyHko4ZUBhLgnnYHazVBWvsYvtc
	L2J5V9MkqBj4REM7y7Hdc6Q8Xu2cRdqgPv6Xsbh44jiaOP84G6ES25bm1XRp2vGv2Go6sawWZQoo7
	0K67H0ZG5xqDBr43q7yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuovC-00000002UN7-2fUT;
	Fri, 14 Aug 2026 10:13:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuovA-00000002UMo-2NUe
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 10:13:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A9B28600C3;
	Fri, 14 Aug 2026 10:13:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C1B41F000E9;
	Fri, 14 Aug 2026 10:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786702431;
	bh=7V+R0TlrgNv6I4jHzxijY+UT4S3tefqsnq6wb+tfRUM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kfb7ASZvlj7ImBihNTNUd8cFjoE+wTPBBA4WRPRRnmyqPXT2/JBcTM6wrSbHUKefM
	 nb50w3sWQE9SachfeygYuhCN+xcGQPXIyK6KC6jbc9CygMhkkLkUg99ofb4SVOFyAm
	 Q+G9lEFEleApoph2Tjfh/2YWlyNeJAVSlGL1HR6stnn6SdwFC8GLZPzNHH0rfQA1XC
	 R7tCSq8o4OfO2YIKztTUb3Ak+tcHqcoHyBaxALp73N18+si+34xopfbtRWCUUk6g62
	 baDTP9ggVh3Qz+uvSI3x33RSmq+D3XZQpd1Zx0809VwUuKG2dTq5SvGzVUynpRcI9Q
	 UV+02rT2XZgBA==
Date: Fri, 14 Aug 2026 12:13:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Manivannan Sadhasivam <mani@kernel.org>, 
	Abel Vesa <abelvesa@kernel.org>, Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	Qiang Yu <qiang.yu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 vdda-refgen and refgen supply properties
Message-ID: <20260814-quaint-memorable-goshawk-e6aaf1@quoll>
References: <20260810112735.1326807-1-ziyue.zhang@oss.qualcomm.com>
 <20260810112735.1326807-2-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810112735.1326807-2-ziyue.zhang@oss.qualcomm.com>
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

On Mon, Aug 10, 2026 at 07:27:32PM +0800, Ziyue Zhang wrote:
> QCS8300 and SA8775p PCIe PHYs require dedicated vdda-refgen and refgen
> LDO supplies for QREF to provide a stable reference clock. Without these
> supplies, the PCIe PHYs cannot work properly. Mark them as required for
> the affected compatibles even though it breaks ABI.
> 
> vdda-refgen-supply is required for all three QCS8300 and SA8775p PHY
> compatibles. refgen-supply is required for QCS8300 only, as a workaround
> for a hardware issue where QREF actually depends on refgen3 rather than
> refgen2 as documented, so the PHY driver votes for refgen3 directly via
> this supply.
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> ---
>  .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
