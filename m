Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1143AC4167B
	for <linux-phy@archiver.kernel.org>; Wed, 28 Dec 2022 14:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1NLk3iR0iurYIoPJoRKCKn8RO92NXTO6y2HNJKZUCk=; b=z3hiYNUwBKlbaX
	Ox7FZTvT3KGiknIo3SKsRa/Ne96rGos/ePqaKsqn1O9moxbBjQSoWfbLmuJtv4lq/qWb1tUUAz5Ph
	iIdJMx2w0JkZ316c0kSCwPDgq8vSNOQitidpMaRzn0DE02flWUPS/FZU5ypuLuzbG9jb6TPY5q5Pd
	A4SMUjmjruK0GnlqotBputZ5VDzog+iabjyqz9EMVICHXH5qUvLy5JIARjVqLdCL91YHiBjuNEo7k
	kq2BM43ekqn6GxJCEvC7eJCSsQ7Mf54t7nYOle8789OchbhKi1OxFrsQe2kq29yFblbBDS4BBrn37
	AX0+ekAT5GM5xHOep6Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAX9I-005SEk-AB; Wed, 28 Dec 2022 14:11:16 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAX9G-005SCZ-2I
	for linux-phy@lists.infradead.org; Wed, 28 Dec 2022 14:11:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 38FB76152F;
	Wed, 28 Dec 2022 14:11:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E4DDC433D2;
	Wed, 28 Dec 2022 14:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672236669;
	bh=S4hSHwHwmJDmSHhHc7z9HBcvuAIbgQgS0N6Ym6s8J6Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YzU/UVWrYu6uk12cMxFwSK7e5jqqROuN16iZ8qUnXeTbAUreXmAMVDQ5gqe97xxHQ
	 qd4d8d1L9mJJd/F/+I+vXQIfoZkVlSw4Sehql4882MvKUyIy1mCx7MNoDlWaKK6dN1
	 WbJ9Pu4NKPGlXqTldr6m3Xmb84/GxcW6s8gTGWlAOQBSXou06x8ohX8FYjOaMq5nus
	 5ySooP895+rsiCq+GYOKpd9rS8dgcTkg8JAkQaYcxmetcFjgqqtZ+3YoAM5c81gwlo
	 IoUzghZVDmOzA6YDRbCczq1/cHID6MoFrz9JdPu1ZJp40lEgs8QZC40nLTMPv0aNlk
	 cexwei4Bh1q9A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pAX9D-0006MF-EZ; Wed, 28 Dec 2022 15:11:12 +0100
Date: Wed, 28 Dec 2022 15:11:11 +0100
From: Johan Hovold <johan@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp-usb3-dp: Add sm6350
 compatible
Message-ID: <Y6xOf4xCEGihO0yB@hovoldconsulting.com>
References: <20221130081430.67831-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221130081430.67831-1-luca.weiss@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221228_061114_189756_A3D1BA40 
X-CRM114-Status: GOOD (  13.57  )
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

On Wed, Nov 30, 2022 at 09:14:27AM +0100, Luca Weiss wrote:
> Add the compatible describing the combo phy found on SM6350.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
> Changes since v2:
> * Drop misc schema changes again since same schema applies to sm6350
> 
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml   | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index 6f31693d9868..0764cd977e76 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -17,6 +17,7 @@ properties:
>    compatible:
>      enum:
>        - qcom,sc8280xp-qmp-usb43dp-phy
> +      - qcom,sm6350-qmp-usb3-dp-phy
>  
>    reg:
>      maxItems: 1

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
