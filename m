Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ADC2C5DF81
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 20:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k6Yzyo0PiXgMUV41sq0vWh8z60lSI4bU8wfdhT45kVE=; b=PoyFDViI6K8yKV
	1ywsHSC9yhd20BaBXaSdWKkurc4qRB7O6IQjZJcIWXkD9Z2pk7JcKp/aH11ep9BTzs85noR2EGeeR
	hQD/iS7syEYuoPw6rLbhlf9B+qiDFUOlsW3wgizUa0qqIgjyNknR02YCqx/exoqf1rB9kcV1DqV9i
	PE4dErGnGNtEiwia9ohpUDYYXuyIIZtyfOi7nWmzAbOXTD/jXELKVCNGaJCT5y65gM5LAeB1Tw0ph
	da7GICRT+8Db+QK13bgzCB7Qr7+gnbcQv4of3F9HLUtuRFVGvcJvJ5oqRDP0FVjTA38AFhnQL57Pb
	LLTFnxdCb9S/dguJgHOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwQ2l-00000008cMB-4633;
	Tue, 18 Aug 2026 20:04:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwQ2k-00000008cM5-3Hwh
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 20:04:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6DD50601DE;
	Tue, 18 Aug 2026 20:04:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5F6C1F000E9;
	Tue, 18 Aug 2026 20:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787083457;
	bh=vOaE2p4C56CWWbYQHaNxAJOhQcBgawoA3CrZB5lnwS0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cWmTOARW+eBAQ2o1Jd68lOcsLTmoZ4YFAnoWYLN18bccGnmoObzjSTzBkJOWjuXqb
	 Qu3MYyPnTm3gfWmmIaFa+CjgryI1E/+O3+j0krSznvnY3FiP7VLqdxhSEmAMEJ1zQb
	 YH2/qXTdomx2qHxq4mC4NpqTfHPsFvSxFbmTo3jQkBOgM/TxdxX/ougjGaOc99k1D6
	 GKAjYtRvzySXSN2lnMHsvnVRx1EehewgyQ5sYutTgxvtqiYDaJ2UkEzS2dteZA6YPs
	 dpKFtO4zYYk972kPykCwqB5O2E7COqt0tiWnn2Rmq7Vfyg5eRWoiKNaXidfSSsfZai
	 wCqJFYLZy3gsA==
Date: Tue, 18 Aug 2026 22:04:12 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com, 
	yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add Maili QMP Phy
Message-ID: <20260818-solid-nocturnal-hamster-b46cec@quoll>
References: <20260817-maili-usb-v2-0-97d7317f64b3@oss.qualcomm.com>
 <20260817-maili-usb-v2-2-97d7317f64b3@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260817-maili-usb-v2-2-97d7317f64b3@oss.qualcomm.com>
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

On Mon, Aug 17, 2026 at 11:16:06PM -0700, Jingyi Wang wrote:
> From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> 
> Document the QMP PHY for Maili which handles the USB3 path. Use fallback
> to indicate the compatibility of the QMP PHY on Maili with that on Hawi.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml        | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
