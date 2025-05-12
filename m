Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1564FC3ABCB
	for <linux-phy@archiver.kernel.org>; Mon, 12 May 2025 23:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=erKtkMoJAUYBYiN4GV+9DC+6jkfF4L7vuGo8lEYsbiE=; b=KOcMSI3JwXKHP4
	rs0jx3o0nDjCW9HxX176HCoIXKeKvR/LNd8E9qARB9YGgXsdDy+xEXjwRvtqxF0gJLXzpOKnwg5Gn
	PssPecAZs9nmiNHbaZWJuF5Y7V+JmW9Cwl+viVC/KXKXMqMRWXBgtQUgMbtZhwdyt9FaOu7JWtbzt
	EQfLCd+CQn2ZFVJO0NJP3IgUZxWV6Pah+JPYkPJywbZUGVZDhl5H/jmHK+zJ/BbnH+AW9vqHOB/w5
	/hlAIyTENBNpN50B44nWJG2rYxn5whNmcJmlgcHbFMJxITiAzomc3xyPjiD/IgmyCfUDopDxlKgYC
	YtcChdMcjJoXLp1prx5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEcfv-0000000Avb8-28HI;
	Mon, 12 May 2025 23:35:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEcfu-0000000AvaW-2Szt;
	Mon, 12 May 2025 23:35:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D947C629FA;
	Mon, 12 May 2025 23:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8802C4CEE7;
	Mon, 12 May 2025 23:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747092909;
	bh=5d7ulaWu8eLuk9+FYkxlpsohVPqS7lsPmXK7MdtDv/s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kYziXmCWJ/OtT/sjFSI8Qr9gwTNkyWj4GklD96Ui5yO8DqP8A6gZ70UIrRrhgtfOo
	 7asY8czIfUUM1QV8BL12++wFoKahmsEVE0zdi4/IBtRl9V4bwGAR5VOmcl0Zm6+2kP
	 MLdKBy0LBtwA0tA+XrXH32a1QRleYOslACSlemqRDDd6OsB1E80IURoZsKFHU8UUjH
	 X88e7KI24/bgDqAKo3UqPeZzSQzFt4E0qwEYABe/sHIlGYvoxmj6fI0LwxKASDg39R
	 9fRl7Tq2b1YnlyzCWpJM6shKn18JvMoSKVE/Ft3yzmkxZOY71kxb8t5YKVAxHbL9As
	 dxyvA4g6X3T4w==
Date: Tue, 13 May 2025 01:35:05 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Rajendra Nayak <quic_rjendra@quicinc.com>, Jassi Brar <jassisinghbrar@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Amit Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Souradeep Chowdhury <quic_schowdhu@quicinc.com>, 
	Lee Jones <lee@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alex Elder <elder@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
	Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Georgi Djakov <djakov@kernel.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss <rfoss@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Taniya Das <quic_tdas@quicinc.com>, Sibi Sankar <quic_sibis@quicinc.com>, 
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Joerg Roedel <joro@8bytes.org>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, 
	"Guilherme G . Piccoli" <gpiccoli@igalia.com>, David Wronek <david@mainlining.org>, 
	Jens Reidel <adrian@mainlining.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org, 
	netdev@vger.kernel.org, linux-scsi@vger.kernel.org, dmaengine@vger.kernel.org, 
	linux-crypto@vger.kernel.org, linux-i2c@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, linux-remoteproc@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-hardening@vger.kernel.org, linux@mainlining.org, 
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 20/33] dt-bindings: i2c: qcom-cci: Add the SM7150
 compatible
Message-ID: <5smj66yzv2xnfdsiedrkivxxebhm2pbbwjjsbiwxhmxr5n4fns@vugxqsm32abk>
References: <20250422213137.80366-1-danila@jiaxyga.com>
 <20250422213137.80366-4-danila@jiaxyga.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250422213137.80366-4-danila@jiaxyga.com>
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

Hi Danila,

On Wed, Apr 23, 2025 at 12:31:24AM +0300, Danila Tikhonov wrote:
> Add the SM7150 CCI device string compatible.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>

Acked-by: Andi Shyti <andi.shyti@kernel.org>

Thanks,
Andi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
