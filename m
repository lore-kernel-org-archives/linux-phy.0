Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 536A6C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 27 Jan 2022 06:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIgJlx3mjti3RiCQFB5XqcfDsbcF8uMYxgKXjspeY5I=; b=QSlwzJ+556oRIi
	ymrTcZi0d3BRC+iAGpGNXwqFEKgPWKKVAsP6r4D9vYcK6BCmtCpvX5pNpeC+ytOPZv7M5iIBjClBx
	o3rcjlY9IfhgDvdBL6lqHiPBe8bUSClHaWsveZMRzocZ/Hf4GtOTS8Hx3xgpOJVeUT0EWbyYB0BY/
	LsexJGcGrZA0wYwglvFM7M7INf+3iaMEM7X25LhOrtJ5TUMaxFKDqW26TEw/k4qM2J8jBJekU7gzt
	kuEAgeiamrmn4sVkZj+Xsbbk4TvOzuupaGReTuBX/eVieWaBPT8i1LjiZcns8ZCCUhWAa3sVTjAyk
	gptOx1mQyO+Q1Kq1RdZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCySK-00EYsZ-Qq; Thu, 27 Jan 2022 06:40:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCySJ-00EYs4-AE
 for linux-phy@lists.infradead.org; Thu, 27 Jan 2022 06:40:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C9509618B0;
 Thu, 27 Jan 2022 06:40:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CCB3C340E4;
 Thu, 27 Jan 2022 06:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643265626;
 bh=YCEQJOqamp76h+hodLfyNzMOia7mX3TnaRSEk+7aQeQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YQV46Z+5EOLaDHiEdtXw3XUsks4cNbnXz3bfkbXzJEhN6tFHRcyr9EEoz4X/8/dBW
 nILAuwHxfjeQwZtula5DjDnqfF5ZEGTtcFscpAHaop4wx05cxBhmoQUJPuuhII++tg
 538KGKoIA8APnOTVDu68xeNOFGlE60F3wBTZjTzVz7MdQ8JR4DXFEqb2nRaBaiKIFK
 ZtTlPZabyh7MQSi1LUdkoYLlUM1GrjlSTu6F9aUrci1gteAsBebWPVT9JUGRlHxww6
 XS0f4Awcu2Vgzcymd+joAG0aS1nj/TUNrGDQZC/2w1hiqYrrqfu/1jX1l5gw22kDr7
 0fxNblMX/m+oQ==
Date: Thu, 27 Jan 2022 12:10:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: David Heidelberg <david@ixit.cz>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, ~okias/devicetree@lists.sr.ht,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: convert Qualcomm USB HS phy to yaml
Message-ID: <YfI+VvBv4mP/5BlS@matsya>
References: <20211230000740.103869-1-david@ixit.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211230000740.103869-1-david@ixit.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_224027_418421_EF2996F1 
X-CRM114-Status: UNSURE (   6.96  )
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

On 30-12-21, 01:07, David Heidelberg wrote:
> Conversion of Qualcomm USB HS phy documentation to yaml.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
