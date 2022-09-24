Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A430DC32771
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 06:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3P/h7/iRiBau/x06K8aFSfva67unAY1lkQF0XIZBxU=; b=VID6oEd1Gbhxl/
	rIWjiY94b+ojzaXLJNs9VaTTZi2jTeApAfz+v1zz3/pr2iKYb3ZnOzh1zRpA8+UaPy7R/09pl2Qqs
	xo1MveNN8XMU9Q5dBTFFDw4iZ4Z8F33x7tTymDd7+wn6yVeQ0jq7e4N6qBArC3dLQBBFxSVZmHyGR
	+S88XjR/LNX4njaL22bnnfW9J4jCE3fB4rKSlaW63nqRCZTSxjYAmkUGJ3x7SahJQcsz2tRwf4udg
	twr0R6sl+a4oqe1ZSrK5wREgxzvDzJY0kTUn57OnKUvFcv5iUGzMPKyXIUqTRnqDMxk3ZQEuhbqVA
	E2PT7d7zJv2+rAZhuZ6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obyo0-006W1b-UA; Sat, 24 Sep 2022 06:38:28 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obynx-006W12-MX
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 06:38:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 5BADFB80AF3;
	Sat, 24 Sep 2022 06:38:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39AC1C433C1;
	Sat, 24 Sep 2022 06:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664001503;
	bh=T8nmOQrLj2xvmYYRjnPLdaZP1dXgSLOPrMfJSf2fi2s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bM5Ao7/0CcYomFx8LBj61ETlTKq/rE0Qxp5aOZNZy/P0vDNmF4lgnb9Uo8UnitVKf
	 QOSveK5GXpxbDFYdnZG7XDR6jEkzFIVHj5Em9N8GYkXEDW+d8UqCIpW5f3jNsge4iM
	 kmMqbbtxxtgB8V/V45QDFcIAScfJv930vSeEVOl9CgmqQ+uT0PKkOZkLXO+vSj0ArJ
	 sXdHP4QPbIwn5U835PXeg9grFdoEgi//ZgOG/4g8rjpTtER4cJCUp4t75r+dkkqu1U
	 Ep9yPg8YH6YyAy7KuJv4y6uDzkTdN/Knugm2VgiYcXsylkmuSoHWjz4ApKFShz2KZe
	 JCq2OE04eLa5A==
Date: Sat, 24 Sep 2022 12:08:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yuan Can <yuancan@huawei.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@somainline.org,
	kishon@ti.com, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 0/7] Use dev_err_probe() to simplify code
Message-ID: <Yy6l2lSb8v27P5WB@matsya>
References: <20220922111228.36355-1-yuancan@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220922111228.36355-1-yuancan@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_233825_890483_0970334A 
X-CRM114-Status: UNSURE (   7.45  )
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

On 22-09-22, 11:12, Yuan Can wrote:
> This series simplify the error handling in probe function by
> switching from dev_err() to dev_err_probe().
> 
> Yuan Can (7):
>   phy: qcom-qmp-combo: Use dev_err_probe() to simplify code
>   phy: qcom-qmp-pcie-msm8996: Use dev_err_probe() to simplify code
>   phy: qcom-qmp-pcie: Use dev_err_probe() to simplify code
>   phy: qcom-qmp-ufs: Use dev_err_probe() to simplify code
>   phy: qcom-qmp-usb: Use dev_err_probe() to simplify code
>   phy: qcom-qusb2: Use dev_err_probe() to simplify code
>   phy: qcom-snps: Use dev_err_probe() to simplify code

phy: qcom-snps: Use dev_err_probe() to simplify code
phy: qcom-qusb2: Use dev_err_probe() to simplify code
phy: qcom-qmp-pcie: Use dev_err_probe() to simplify code

Applied these three, rest have conflicts please rebase and resend with
acks collected

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
