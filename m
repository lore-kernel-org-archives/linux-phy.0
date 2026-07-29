Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26490C53200
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 06:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dP3ccMiiznZM8CMn5aBmb7z5G43JH5x2nguOD5+bkUw=; b=AJkAnH+BLnAaQP
	QqhbyJVRIk8ogMgYIa783m/j0L8dCle+pQfZcg+IFhm5+TKwaz0VVqR2NZtLZJ8QdV2yFAPjHoKJ7
	3brcloVHnSkpvgQ4kawI7xFUD3GSQY1Dh8ny9275hT1intuUnSVSHAgEW/o7dhk7cAp4elFfqDqLx
	ibjW6cayApGKzCy/I1g/rIdNJYZBm6VxA5TFGIxp628QssUJQLraYPU2LpViPAGHL3sm3CtEB8+Ys
	hEaoAWca6jWR+Q51DF6M1pHnl3w/5v28rfVP4UWKXViBHZG7/aK4Hynd3Mohf3cNom5XdO/b1a6Qh
	PV7x97dHLRQvKQEugzlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woxjH-000000071Bp-2DHl;
	Wed, 29 Jul 2026 06:25:23 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woxjF-000000071Bj-0xHS
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 06:25:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A8E6C60A5E;
	Wed, 29 Jul 2026 06:25:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FD471F000E9;
	Wed, 29 Jul 2026 06:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785306320;
	bh=iIwHndzxHzRQnBZ5w5VhqP9refHC1NyTKivyB6K4r+g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GdA0I+IEsh5YT3mzVZicQaUnSz64VfpfrghWmOPimeVzY3OJhMriIj2qUvU0Tre7E
	 Jtc8FA5obKBpC+pNF61YXe1WeB1TDJ8JzulJxyALEsUQFT6atq1KX3G2Sw4myBoiE8
	 pz3mTcbLyq4lnDWsT/sDT1FJ7stKd79KIaUaQqTeT+OS2aLO8HWAZrbTqjwo9hgyck
	 K1E/BxNaJk1xBgGb26wgo9v4Q5ApsupVWvCmhYunOOui1yJGTmvu8Vv8sYRlwz/bPR
	 NBi0whbtrIea+aXmguOrvNNKUusc4QHjWJJ+J2etHJ9ts0YlcSHQIYa4d75M5Sh0N9
	 F4iEMWjWKf0eA==
Date: Wed, 29 Jul 2026 08:25:15 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Bryan O'Donoghue <bod@kernel.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v13 5/5] dt-bindings: media: qcom,x1e80100-camss: Make
 vdd-csiphy supplies optional
Message-ID: <20260729-uptight-proficient-whippet-1a4aa8@quoll>
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
 <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-5-ae811e2f0799@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-5-ae811e2f0799@linaro.org>
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

On Tue, Jul 28, 2026 at 10:35:36AM +0100, Bryan O'Donoghue wrote:
> Moving the csiphy to peer nodes means making the current supplies optional.

There is no move here, thus this change is incomplete.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
