Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E991FCA5FB1
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 10:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ZJKQLw5fgS5+SIUf6uKGzPjp2V21Z5YDQxgZ5P32mg=; b=kl10Hrpu6/xhyt
	ZXSWgTlN3DWRohCda5nL85T9Rjw/v2myNUp5qNIIgMorYlvAI1e5MnQskijOq/xIrf8vUGaZelNT3
	CtcQ1l5B1QOLVq+jZpmH6irwDTVa+e8SVKV879w1R5n4SauA/1fkN0/c0FqRcXilrUEWaM+SEFdvV
	f45J3TypAlR/l75vK9YdV8SXVFjAKxC2b9nfCXEQfXtxhC5TG2EFkGf3NUu1QK6DOjImIi4bHhtkS
	0OwqSBmtMsxE4iX2SfofbgcDWgKMGFByIBFY4WsS/D7eYtbBneV54VdX8W+UGbOV3714IIJb9ex96
	12PCiaVwSylsNCnO/IdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBrci-00000005laY-1R1B;
	Wed, 30 Sep 2026 10:33:16 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBrcg-00000005laH-3YlN
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 10:33:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 20A8B60239;
	Wed, 30 Sep 2026 10:33:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EFB31F000FF;
	Wed, 30 Sep 2026 10:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790764393;
	bh=SlzvIfXQMZTAzcLfa5qKcO8crOpD4oFhPZi7BRvdPzQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZZE4ZykabQV5457FSFVZUAy4R8uyjvhBUSYq+h3sPAOhU4YaClyRQmb4ALS5vKQLL
	 KJvIYHx7Z0R1RfaimF7D77ekp8C8M1kJ+BTo8Ey0ScFgZZX2jbD0Ug2CJxlceAL8+H
	 l3rh15F/+Mo6nU3jYTnHSArFnBUuseJEH9WbLxED4BpnO6+posbJkkoYOc2HHepj1D
	 gRYIaMf013xFeIkkHeCv0VgKlJv0rPAM66Rj+cZVdZXECSNNMeaTxwGbZpSuoWIgS7
	 qfUmIA6MGJfqZu5LbSncqE9JuDWi1ruVSrQyOU8Af3dXzfYxzQePUPqD5EkglEjcsT
	 WlQ0CZ248MsSQ==
Date: Wed, 30 Sep 2026 12:33:10 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org, 
	linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com, 
	Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
Subject: Re: [PATCH v17 01/11] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Kaanapali CSI2 PHY
Message-ID: <20260930-passionate-mole-of-efficiency-8dd27a@quoll>
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
 <20260928-kaanapali-camss-v17-1-dcf3fd37f76c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260928-kaanapali-camss-v17-1-dcf3fd37f76c@oss.qualcomm.com>
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

On Mon, Sep 28, 2026 at 11:00:27PM -0700, Hangxiang Ma wrote:
> The Kaanapali CSI2 PHY is compatible with the existing x1e80100 CSI2
> C-PHY/DPHY binding. Add the "qcom,kaanapali-csi2-phy" compatible.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
