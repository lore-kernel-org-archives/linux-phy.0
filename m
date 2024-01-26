Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8275C47422
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 09:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tM+ZZGlU2BbWYofTXjU21x0MZD9HX6IcTRZpyvs8s8Y=; b=wP4OMqF9UYnS65
	8tHK9SOfr3JRVN+bYiBQtHI07L+xQqNfU8xTxTuWItJ98mZNI/tDwxut+82C7NgFOqKBQvEhzgYjz
	N6py7U7tV3Qn5BktIcGj1ai9Y/ddhD3jSKD8mJYbJGg8Z/fiby1oNwpJseO0gWFlf9j45+siA+TZ9
	Nrx23fxi78w/Vxs4lOGeSd0+TaL5SRybLWb2FozBPortR7XzVmlRAuanKzYUkjsfM9Zbb1AA+sNzI
	5dkZ7oCltkZhUJDGKUOU2eEBE4WOvN1c78aHc9JxYPK3WB647KeZs5gTqIFUwpXLyt+WPaP5tcsfG
	08owF7thOt351QRL7CGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTIDP-00000003Zqp-3qYB;
	Fri, 26 Jan 2024 09:09:36 +0000
Received: from abb.hmeau.com ([144.6.53.87])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTIDM-00000003Zov-2cDQ
	for linux-phy@lists.infradead.org;
	Fri, 26 Jan 2024 09:09:33 +0000
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.94.2 #2 (Debian))
	id 1rTID0-006Ez2-Vh; Fri, 26 Jan 2024 17:09:12 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Fri, 26 Jan 2024 17:09:23 +0800
Date: Fri, 26 Jan 2024 17:09:23 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: David Wronek <davidwronek@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S. Miller" <davem@davemloft.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 1/8] dt-bindings: crypto: ice: Document SC7180 inline
 crypto engine
Message-ID: <ZbN2wwvM8D4yldjS@gondor.apana.org.au>
References: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
 <20240121-sm7125-upstream-v4-1-f7d1212c8ebb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240121-sm7125-upstream-v4-1-f7d1212c8ebb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_010932_681718_05611FF7 
X-CRM114-Status: UNSURE (   9.62  )
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

On Sun, Jan 21, 2024 at 05:57:41PM +0100, David Wronek wrote:
> Document the compatible used for the inline crypto engine found on
> SC7180.
> 
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> ---
>  Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml | 1 +
>  1 file changed, 1 insertion(+)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
