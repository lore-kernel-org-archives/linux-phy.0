Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52CDFC32771
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 05:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qDKkW2aEXFKS88JPdsLy5Oxyxn9tpO4DT/oyauf/T6U=; b=YEpf9iZw3v4aFh
	hrieR/0j9UYXN9RMltbQvdR2fou5g5mDY8EoM5tM9Mx3vuZrlyy6QmToztIgNJDwzfsdqjE/Al1EJ
	MLnEfteZSPI6jeYOgqmdyCaP5Kdaz2H3KSqqkbscU0jiJlCoan2C4OZabTTQWrMbmT4R4cn6ms6CY
	lHMZqKq7nPq8NOGEyeg45u2/jBde4E+pJ70xeYe5cWmhpit6s2OozNCEHJ9eqRR4haLathivC8sDO
	LecGgqBGDzw3eqS+Zn3YjQmPaeQEBwokq6VC1lnH2UOqbiuyboO3TTAJNhd6oUvNecjrkf2yeAtFa
	kBzOXQKW6X5pl45n1NSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obxkA-006RYR-7g; Sat, 24 Sep 2022 05:30:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obxk7-006RXi-Ct
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 05:30:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 77FB860DED;
	Sat, 24 Sep 2022 05:30:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28E8DC433C1;
	Sat, 24 Sep 2022 05:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663997416;
	bh=BCAUYNRKpCOGEQXu8iXQX164n+AhNyK7/OpgVHVpwOs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EptptaZF4WpLNcwDZXFXphG6G3x+VQyN0EWz8bFQoBXHqWKOKlS9EyG+XGWsZoMGg
	 YaimzxrwyTbhAx+Xo7W0fTzuna64sQJ0Ml6/bGFkQOylJfqiMG/6iTEmuPUTApKLCA
	 ZOmF1dpxtlkpzY37Mf2PQC8baS0NBg+ZOw6iYPIR9drDxLwg0YeMkVMwj5jrBErDe3
	 2jv0UbmfdTvFj4R4q1WKhQv8gJjzJ7Ox7YhSnGnrGXqOjfJP18HpSLeXuVZ/f9SFWb
	 HsYH1wxswIM/PNqYL6IhghpKqoF9y/f0fJ5r/tYKoBOnp8ABiXk+rW+g92DHxzQMaj
	 QFC7RRij0Wi4w==
Date: Sat, 24 Sep 2022 11:00:11 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/17] phy: qcom-qmp: config and misc clean ups
Message-ID: <Yy6V40CiYMEPoZv1@matsya>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220920073826.20811-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_223023_515299_68DF01E4 
X-CRM114-Status: UNSURE (   9.59  )
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

On 20-09-22, 09:38, Johan Hovold wrote:
> Here's the next and hopefully last set of QMP driver cleanups for a
> while.
> 
> These patches drops further configuration parameters that are unused or
> redundant since the QMP driver split.
> 
> This notably includes consolidating the lane configuration, which for
> legacy reasons was inconsistent.
> 

Applied, thanks for the cleanup!

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
