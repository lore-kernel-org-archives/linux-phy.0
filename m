Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDFD3C4452B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 00:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQ9HVfs6atcH5dKcO/JzvZ+V6PBPG3dVQ2WmZgccq8U=; b=DuBG8NLpHYmVBT
	f3LZ0/oPweNLv+Jk7vNNfwWVQ+vucTtr121o9jw+LfE/mat8OPoqiPxzJTH+WfmdC9MvwQz4M/2ad
	BnTa0fqdxERXqiUzpDqiYxgzwPQfuFLRONBCTFdVY7k/xBPMfVwTqVvGMcm79iZ7huSUywhT+Xa/G
	n1lhikuTib+HMRhmV4A5Ppj1ECc8NPwy6BZ2Pxmn0gBxiGxeItauz4W0fNHA41L1JMkpjvjh44jr3
	QIRTShyQk1mEF/y95p4ZhZuK8++/HGlDrLfLpA1ScPL1XMdjJUUOEryF7tFV2LIb+GUzP15R5yfHx
	tLR3wSgTiDSqR7pzwB3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmKfK-0000000Adab-15HP;
	Wed, 22 Jul 2026 00:18:26 +0000
Received: from mail-4322.protonmail.ch ([185.70.43.22])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmKfG-0000000AdZt-0Hjd
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 00:18:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1784679496; x=1784938696;
	bh=ESCbHAC87pVZ9GxAP9Y0O7y7wFinp8StEXwhRPVGMlg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=UxyUnFl8Ebd7eaMdJHc9AvEBjGm394/UNs1GGNt74CQVW/thqn6bK7wyqpOJe1KZx
	 KPrD7K9DavB9bgjF/RSSxfRE+36kp9YYx/bKZqYABYP864Nd28C+rDs2KDdnVQyUqc
	 1wnt1mt34DXi/xwrig9kuYOWkk7HtlvvWUrncX8veWa82Xp/JjQndqbDFy1crwwWvF
	 xr3wPnAjrFr3zENEf6IrRp78uFyIhnfAYJ2r/f/mh2Ll3YV09B7uW4J1LbMeu0tqbw
	 8I6Jkpdzsx2ToL3aSBGXN3yyArY8rLwHJsTa/EjeWm68JxrlvphigUAWqPMKAsf6KR
	 ELS5+/AahT7Lg==
Date: Wed, 22 Jul 2026 00:18:10 +0000
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
From: Esteban Urrutia <esteuwu@proton.me>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: qcom: qmp-combo: Specify PLL version in qmp_v6_dp_serdes_tbl structs
Message-ID: <b77dc15d-f9ad-4c06-9e24-8f73421e2130@proton.me>
In-Reply-To: <wg6lgpaexz4ktjlfzqpsidj56wr3hjax2ktn75kqsoaubtdxre@xh3yn3xpr4af>
References: <20260715-sm8475-bup-usbss-v2-0-2d8def39b190@proton.me> <20260715-sm8475-bup-usbss-v2-2-2d8def39b190@proton.me> <wg6lgpaexz4ktjlfzqpsidj56wr3hjax2ktn75kqsoaubtdxre@xh3yn3xpr4af>
Feedback-ID: 147889766:user:proton
X-Pm-Message-ID: a2ccf6bbe5a8d06a77e22459d477556da87e94b0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_171822_903178_31AB2DF6 
X-CRM114-Status: UNSURE (   5.24  )
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

On 7/21/26 6:46 PM, Dmitry Baryshkov wrote:
> Checking the hardware docs I see no mention of v1 or v1.1 for these
> PHYs.

I got this information from [1] (SM8475) and [2] (SM8550).
As can be seen downstream, SM8475 specifies a v1 PLL while SM8550
specifies a v1.1 PLL.
v1 tables are used for SM8475 as can be seen in [3].
In downstream, the SM8550 driver [4] defines both versions.
The declaration for the structs found in the SM8550 driver can be found
in [5].

Please check my findings.

Regards,
Esteban

[1] https://github.com/LineageOS/android_kernel_qcom_sm8450-devicetrees/blob/lineage-20/qcom/display/display/cape-sde.dtsi#L70
[2] https://github.com/LineageOS/android_kernel_motorola_sm8550-devicetrees/blob/lineage-23.2/qcom/display/display/kalama-sde.dtsi#L71
[3] https://github.com/LineageOS/android_kernel_qcom_sm8450-modules/blob/lineage-20/qcom/opensource/display-drivers/msm/dp/dp_pll_4nm.c#L195-L282
[4] https://github.com/LineageOS/android_kernel_qcom_sm8550-modules/blob/lineage-21/qcom/opensource/display-drivers/msm/dp/dp_pll_4nm.c#L131-L152
[5] https://github.com/LineageOS/android_kernel_qcom_sm8550-modules/blob/lineage-21/qcom/opensource/display-drivers/msm/dp/dp_pll.h#L104-L129


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
