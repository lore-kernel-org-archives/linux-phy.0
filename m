Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCABAC54EBD
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 17:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mj78yjnyYpt8UtyiaHg733TJwnozIP7o/3ROZepQbgw=; b=gdt8JBu2eBX2jB
	r/wgWvlIZTw9c69kFJ4vvenUIhj/DgYaPgRmp2Me4dUojEtID0g5v/qrS/1IXInyr+sS8pDA0d32F
	aEx4HnowJM9No2H2NICpze0/o8EpFtPTeEt0BzWVZIrSkyXC9eozzdrX2CWu+xYNcNR561xC2E6eB
	ANHnoTj5jjm0YYJOfP1Vqf4V8W4hLKlua+fP8ZHWm9Y14xjUIJDgfLPbBC2pYq4lwHlGjmd3YHjnk
	D8S6/RTlk8D0L0vUi2OAbe2yUbUeInHFssUKChH8IIUzqIXLfxni4OR6AsOH5CQay7IzgKsKyPmtP
	ojRxR2mWsmM3rzXIu4cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGO6P-003sAl-0y; Fri, 13 Jan 2023 17:44:29 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGO6K-003s83-FF
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 17:44:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id EF983B8219D;
	Fri, 13 Jan 2023 17:44:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1E8FC433EF;
	Fri, 13 Jan 2023 17:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673631861;
	bh=/TvEdaQnixfTBRY60kd1Sqb49/Ul7/Ctq0AxWaiJKDU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CNLq1Swlnx3kKr+nR2rzwo+GXUG8Zp76/g2O+kc50d8VeyLm92uCYYIW1htMfB9Gb
	 6x8VQ3IHqxI4vx9bWoW3MQVpMwJP/ii2A/hefduydZCAf0OqCocTJzPlm1DOj9BJsb
	 dv6oniJ4DBtn8H2OWZXwSlOO/sJdyJbsxftU1BwMR3JNvUEVhMNcCg3RocbBlHY6bj
	 qHZWRF4W34holfYLRYDR0UHuWg3uHQBHBz+y82P4lb8Kb94jmYg4q9vIUxWCqg06UZ
	 qr7Pa23V9iJOWBYsRBEP2+OfhH4fSGmJTaqIDxCiQDWMyizkI7uO/uxmrqf48IIbIu
	 zf3YkIGl4+QfA==
Date: Fri, 13 Jan 2023 23:13:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-phy@lists.infradead.org, shawn.guo@linaro.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	agross@kernel.org, bhupesh.linux@gmail.com,
	linux-kernel@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski@linaro.org, andersson@kernel.org,
	konrad.dybcio@somainline.org
Subject: Re: [PATCH 0/3] Add Qualcomm SM6115 and SM4250 USB3 PHY support
Message-ID: <Y8GYUWF/LHqGzlE/@matsya>
References: <20221213122843.454845-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221213122843.454845-1-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_094424_682100_58F2EFCD 
X-CRM114-Status: UNSURE (   6.83  )
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

On 13-12-22, 17:58, Bhupesh Sharma wrote:
> The series adds support for USB3 PHY found on SM6115 and SM4250 SoCs.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
