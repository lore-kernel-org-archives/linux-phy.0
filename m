Return-Path: <SRS0=czee=OZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E504C433F5
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 07:49:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6CA7F61350
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 07:49:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6CA7F61350
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fCj+yHDRIgIu0jkIA9CxlY/Khz7NWdc3ibXgqGgP3hg=; b=wC4ahc/RypKElO
	/D/MexEpUJE7rEwaZgcia5gqpNDo84X1+vjaPqnRmCp2sLv44wLvfDjjS/IFkv6IGXp/4DV3TOmKS
	3qmZ7b1+x+96GBD2nTj5zila5UASQyMYAox8bIwHoR7GtbkFFXNBm1cEPpGUc3xivNjdqX5fUeR8h
	bQhP2gie4r63H/zLPyDZXQ+R7P3yZ8MqSWMjid8YVyM1RwNOfd59UaC6s5C04waVC7yuJh0HK79nb
	4yl2I3yGTzHm669zqK6GDzZhnQ456DqkVuDFS0nPv6tFUjJ6bP4PK4dyNuk4pR0EXw3aVxWQxUxk8
	LRh8ZJIPNMjmJHTtsP2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXfCG-009QfU-0Q; Tue, 05 Oct 2021 07:49:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXfCD-009QfC-UJ
 for linux-phy@lists.infradead.org; Tue, 05 Oct 2021 07:49:07 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A5649610FC;
 Tue,  5 Oct 2021 07:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633420145;
 bh=tFJL+0DpCWgSGCfmXxt3TK8h/kbuntvLMc+Ww+vUnNg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fkZAJVb2fFMTw22pJ/zm+L7TVhjP82c41AW7Cu4/vdoeQpdJn4iDqfnTqlhvq32w9
 ojmUDms7Nsr9cptLXcUHfXaHQmGwJ9OgyY5MDGTez7iDriBBFi5nmVsRK31AJNJt7L
 6SUplVJnmtE59eyfILADp9YYFIEJimasV/Ce38tcldygucQRZV++gL5W3ucPPSlu7K
 bYJgeKIPE4HvLxzomKNkMYrA+xD8E4d7/q6I4AWZVfqjOy1drsBp3c3ciIEHRjxzV8
 BurrTUrFlzU3dRwQ0iGIBVptr5JaUYR4MaIuyQNYVQpVpCIernid8hbbx92ZN6X8Zu
 Jv56sCqo+Hjzg==
Date: Tue, 5 Oct 2021 13:19:01 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Shawn Guo <shawn.guo@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 Jami Kettunen <jamipkettunen@gmail.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: Add missing vdd-supply for
 QUSB2 PHY
Message-ID: <YVwDbUC5WUHmcRJh@matsya>
References: <20210928022002.26286-1-shawn.guo@linaro.org>
 <20210928022002.26286-4-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210928022002.26286-4-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_004906_015147_6A23409A 
X-CRM114-Status: UNSURE (   4.94  )
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

On 28-09-21, 10:20, Shawn Guo wrote:
> QUSB2 PHY requires vdd-supply for digital circuit operation.  Add it for
> platforms that miss it.


Acked-By: Vinod Koul <vkoul@kernel.org>

Bjorn, I have picked 1,2 feel free to pick this

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
