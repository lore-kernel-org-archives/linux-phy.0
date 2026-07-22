Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DDADC4451C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 07:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwFe7ty7MSQ38FEG4whgUXr+HBYlqZ60ApgmuNr40g8=; b=XzaapLQCkoReSp
	TdpVAE6GHi9VgjcPcHXJJDYWZ3sJExPcOZitRGrfpJCrptOUItpGEPtec2U0A4mzXmJB25aW4NGKi
	irHktp2gZaB4jgH5r3rkdnSQE9EHDCm/JYbNu7QsbvNw4HjM5uk8G/lnhO/ZMOZ8qxN9+lShyq49T
	f920PF154xXhHFcGrxML9ATJConhqh072TTqpYGvqy0UMV0mQ/CXEb8tD9j4rEt1x3nNe5KoFOAEp
	sqkIHPfZJip/5cj6iTPX+ySlk1Fdx5d4uGGTYT7gujUv2MMGcUknatzmpGGn5yu0XKN10cjkSsT4/
	PlVlZeJsGtfBr/x9VYtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQwz-0000000B1Nu-0F1B;
	Wed, 22 Jul 2026 07:01:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQww-0000000B1NS-24Gu
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 07:01:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AEBF141A70;
	Wed, 22 Jul 2026 07:01:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6934B1F000E9;
	Wed, 22 Jul 2026 07:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784703661;
	bh=CI+UMo385N4h+hc9M6wJenaTKuLPOI4BaoeYVQ49/R0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=esa6/k+PMxEFbkw7m4bgcelBl49jBZiH9qd5G0ZvGMysh72ybSGx7sabDnxQqE603
	 rPgUTSsSrY9bv/EXXfXx2lwhBXJtIBDNWPn510TP5thoCShlUdsmCxZiJoy5rB50ZZ
	 hn5av/a4drQdOWhKNI2bQWmJ/5U4baK0meLPd9n+hQMxliFCSTd+1WN56CxlkK5bvR
	 IN9m0M0nF6yQ+5rB5N5FpsRJ+1SVVijR02KTVh8YaLS0B6lcBtlfqnJSlJVW7SRFcb
	 oLMxdQdI1tj+3lMmMSZGd44tLS/Hf4yFRyfW9pPrZK0hYV8Twkpk8O+jJHPjZ5n+0y
	 OYRD3f5oeN4dA==
Date: Wed, 22 Jul 2026 09:00:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bryan O'Donoghue <bod@kernel.org>, Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	jeyaprakash.soundrapandian@oss.qualcomm.com, Vijay Kumar Tumati <quic_vtumati@quicinc.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v6 2/7] media: dt-bindings: Add CAMSS device for SM8750
Message-ID: <20260722-enthusiastic-hyrax-of-zoology-17bd7d@quoll>
References: <20260721-add-support-for-camss-on-sm8750-v6-0-a5f841061d18@oss.qualcomm.com>
 <20260721-add-support-for-camss-on-sm8750-v6-2-a5f841061d18@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260721-add-support-for-camss-on-sm8750-v6-2-a5f841061d18@oss.qualcomm.com>
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

On Tue, Jul 21, 2026 at 05:46:01AM -0700, Hangxiang Ma wrote:
> Add bindings for Camera Subsystem (CAMSS) on the Qualcomm SM8750 platform.
> 
> The SM8750 platform provides:
> - 6 x CSIPHY (CSI Physical Layer)
> - 3 x TPG (Test Pattern Generator)
> - 3 x CSID (CSI Decoder)
> - 2 x CSID Lite
> - 3 x VFE (Video Front End), 5 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE Lite
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Drop both tags.

Binding was very different.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
