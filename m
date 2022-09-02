Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3F6BC6FA81
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 17:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDJ738pule2T0O+DKcOIdmhdJ4GwZJC55y5FTZcnaEc=; b=v8PiFDsiDXQAIV
	0JBshKeDe73ppVYuXDQQV13Nte3GA+5BrRonUK5Q3QTkvnnHbiysMY/IjigQlVNfoDzVxXiwfOue9
	LijtJsEya+4ekvkYpfTVxCd2OFdZwB4GTKzaOJpHOJbwL0/7vhf/g5P0abKLC9wt8Cdxv9PwrchpW
	EnznveFcvkzaiNu39/VBKKiPSbl2rS8qSlxvg7m6D69QYrCqx4pEmIYwcmJRQM7K6Pf3tKFJ6VNwy
	nkXYG3a1vT6mAd0pbnDgtKNvB7PI6KeHiQ3MLIE/TftySEAB9cIoAiofdC+RI2hWKSZTFqxe/aL0p
	ypKE86Odc1i9JYKQ7Whg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUAQj-0085Be-50; Fri, 02 Sep 2022 17:26:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUAQc-00854o-Jr
	for linux-phy@lists.infradead.org; Fri, 02 Sep 2022 17:26:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E9EF5621F1;
	Fri,  2 Sep 2022 17:26:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D82C9C43142;
	Fri,  2 Sep 2022 17:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662139561;
	bh=Se+I02gEhyXCqeTHHuUDXwx8mkIp6MEIWCCZx8JwIR0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z3lH6cGF2yz9uDF+qMhwjTZI1SdoQz3Zrqzie/wY9vkYSDuQNIukJ3mUgXYHyB2Vs
	 HY5HTxvXP8dqrO4d8U9fLyN3Xav5UNQj/3Q8UMDhjFWnNWyA92Dvy28d6QTHXrwbmT
	 YxTWiT6sHSsb7mmgD94UZ9hUkruM5jctWNcqcbOUXmn7ztzAp+lh8mas39mIfkog5M
	 6uPhDiWi36JPnjbuxmOHP89aovkSc2bKa9J20wzt4ZD6ZcUUPICTs2b+n7rTyCC3Bj
	 S46qf4yXwLDPpFLheZ+rf6XuvzyHdI74hHEX5+8tcp5jBYMYEBvUiKTSPWQ5BE9O5+
	 1q6bB9zcC48HQ==
Date: Fri, 2 Sep 2022 22:55:56 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Yu Chen <chenyu56@huawei.com>,
	Binghui Wang <wangbinghui@hisilicon.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Carvalho Chehab <mchehab+huawei@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: hisilicon,hi3660-usb3: simplify
 example
Message-ID: <YxI8pHOjxhgNHNh7@matsya>
References: <20220817142246.828762-1-krzysztof.kozlowski@linaro.org>
 <20220817142246.828762-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220817142246.828762-2-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_102602_715475_10E7B57A 
X-CRM114-Status: UNSURE (   7.82  )
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

On 17-08-22, 17:22, Krzysztof Kozlowski wrote:
> syscon and simple-mfd cannot be used without device specific compatible,
> so simplify the example to fix this.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
