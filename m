Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D968C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 13:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZozbxdWKxHW7OlSmoY9XkgNcwFfS2hpqhllkToABXy4=; b=bqOmPgAE5CyuGy
	pqGGXFmoswr9/295uIIX7ori3fEM3N3+Hb/Q3OWTeZnA6hhPq6NYePeUrlsYiEm2zvjDl+WQBMbiY
	/+E/mWI6q8LJVVzIyGznHoVBWFU7tkwaujXmMTBjwSq0kUR1d8ew5wPiwEPWSf978f/9pxbhmDULS
	3M/lA1uwx+q5S2hR3OXe4bEq/vy+n8EV6h+W94Fsn54lE8qzj1PPFfQJZARLZMUWzlT22D5FsMeRR
	43Lqg3ciciZcyOlR1VRPvRigNjGfNW9Sy9yriLUw2K64Z8No0W8tPOY4ANhOwtd3gLFWwxoTIJ/nz
	I6LgteQNkRUuaYBwLXjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovIlE-004DSP-GJ; Wed, 16 Nov 2022 13:47:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovIlB-004DQP-8C
	for linux-phy@lists.infradead.org; Wed, 16 Nov 2022 13:47:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5A09761DFB;
	Wed, 16 Nov 2022 13:47:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFB2DC433D6;
	Wed, 16 Nov 2022 13:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668606443;
	bh=bavOCPpVZflXom3L9vcP5a3uEurFEDRZ8UR6FNwwCmA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pXif7wxmNT79tjEng+ImaLf/4H1bkm1YD8QpwPUPC6xO8b+K6NW4Os4jhX69CLVRP
	 +I6//JUaDwv6BPzM/Y89q3BmzgkpVg332u/FxC1M7MvMnY2YT1h8uRQOtyo6ADJe/6
	 lM7/WfhzIqEsDDfXSguCfEXlea5P47Z3mRnPkhhReByrI1IO09wmqqEbkIPZHp3fWi
	 ye1mBzuZ8MGjw1moEImnyQkKbl7zuqNxP+QsPVOLl3cdW6g4crDBlKB1dYDvsfegE/
	 ozPpeeQNe76B+lMXDdT8Ac4bQSWZZQD2r/bM8njLEZHe9udoxpuCRTWmD4gSsBOXRS
	 uWM6CE4UXsxDw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ovIkg-0002js-6x; Wed, 16 Nov 2022 14:46:54 +0100
Date: Wed, 16 Nov 2022 14:46:54 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 04/10] dt-bindings: phy: qcom,qmp-usb: Document SM8550
 compatible
Message-ID: <Y3TpzgQ1JaFs5sNk@hovoldconsulting.com>
References: <20221116120157.2706810-1-abel.vesa@linaro.org>
 <20221116120157.2706810-5-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221116120157.2706810-5-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_054725_342718_9955948B 
X-CRM114-Status: GOOD (  15.53  )
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

On Wed, Nov 16, 2022 at 02:01:51PM +0200, Abel Vesa wrote:
> Add the SM8550 compatible to the list.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml       | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> index 0c6b3ba7346b..cba2a252baf8 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> @@ -37,6 +37,7 @@ properties:
>        - qcom,sm8350-qmp-usb3-phy
>        - qcom,sm8350-qmp-usb3-uni-phy
>        - qcom,sm8450-qmp-usb3-phy
> +      - qcom,sm8550-qmp-usb3-phy

This one too should be based on sc8280xp rather than the legacy binding
scheme.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
