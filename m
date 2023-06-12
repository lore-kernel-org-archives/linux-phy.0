Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78AE2C7EE43
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 20:07:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7hOFOnRUFzuJZSIwXlHmasZ3ZIR8Hm0kVIz1gQ+2EA=; b=tjwEOiLcbQZPIK
	k86VFtnZAKG5x6+P9MNi6NEF7eSVgVEbOVG+OzcbR/VxNj5xrI0UdfeRCta0ygc7dTwhmPDsF40GE
	9A/2l9/UejTCbZf/ytx8OFyZCcqf0Wbqt2fXJ9QKXxGOmC8/nMk23H0wwC8O2rnPNgzXCE1sgJSHi
	X4OWaCrtYmSLdLt/5rQNRJBV7uHX/wYNHNAp2CWv213VlQ/C19qzOGxKAOjSqitOmeoBakxN2Uxwm
	IIHeTcaqhIKwELIr2JvwBt7wZx3YzwSFW0V3CzdkLlnmKOOrNClghGX8crF+f5o0rCmYbBYlSD+ys
	kOCB5etHOxi/geNpBG9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8npJ-005ED3-0Q;
	Mon, 12 Jun 2023 20:07:45 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8npG-005EBc-2L
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 20:07:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686600461;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=IuHNa6WZpYveQJr9GnIkLeDKCuARWHsJdm0re5kGQrg=;
	b=TzTO0sCEsV2qx3hSGadnanDjhOBMaApUwVmHuSFp2RxZO5HPAJYJnYAHqbQKdnuM/nizHf
	AzBiQFzxEGz/8P9SimJAgxF7sP56ncFLUaAhHh+JiohB+ieb/Bj02ZyUapc7IbccA6t047
	+0Wwit0LhH1c4rmP/xTvGuZX62DAIHY=
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-386-x0tvcb5KPDuYsgVjh_L-Lg-1; Mon, 12 Jun 2023 16:07:37 -0400
X-MC-Unique: x0tvcb5KPDuYsgVjh_L-Lg-1
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-55b2dda8657so3900132eaf.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 13:07:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686600457; x=1689192457;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IuHNa6WZpYveQJr9GnIkLeDKCuARWHsJdm0re5kGQrg=;
        b=JpG1qdVpZFR1iHRkWhypcWIHzW5RN9He9AEqQKqJ0+dWst0ew+V2PUFX2j0QyJk/e/
         MTMIl7zRThaC85qp4tXWy9g6f6gJ4utdNkORSoB/+tm7KRrbuL7cjs21O2A4idEGGFJ/
         UZwU8xB2Lkl4NZEphKdp3jqB2bg5KS8FANI/S7Z7TmMQwA6ATILIhdCvDv7ZVLQ1dfLD
         23j75PPobwWXbwW69rk4GkfNUKBEO7CWos2Y2hLMlTdyi0v+kOVA4uj/fKN492MytSQK
         HaPs1oEmo0Q5qKY7cYH/cGL05LB2SFnv2/21yriqPCKhyAUSwYRAZq5vht1Fh4kkWf38
         oNXw==
X-Gm-Message-State: AC+VfDw29nPtR7UyBP4VMqA6PJfTrQr4MoV1hcQk7+BedWpEAnhWq1li
	Cuar5c0jK7tLYtT6UgC03eQZnl22wUsvvkKc1TK1KUlrZ1zcy37gjLtHsYd7YjeIFsKatM1yApe
	s29gk70j8GGPmU6Ld0kD+PTnDrg==
X-Received: by 2002:a4a:bd92:0:b0:556:c580:eba6 with SMTP id k18-20020a4abd92000000b00556c580eba6mr5832102oop.4.1686600457017;
        Mon, 12 Jun 2023 13:07:37 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4Sjt0Fg2Ll+XfHA2BponpBIQ9aDoC0AyoTvbdiarG2SXbdj01ZqgXciHHSmeIvp1v/ALCRsQ==
X-Received: by 2002:a4a:bd92:0:b0:556:c580:eba6 with SMTP id k18-20020a4abd92000000b00556c580eba6mr5832088oop.4.1686600456761;
        Mon, 12 Jun 2023 13:07:36 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::45])
        by smtp.gmail.com with ESMTPSA id t14-20020a4ad0ae000000b0054fd0b7af2bsm3509727oor.31.2023.06.12.13.07.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 13:07:36 -0700 (PDT)
Date: Mon, 12 Jun 2023 15:07:33 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH 11/26] net: stmmac: dwmac-qcom-ethqos: remove stray space
Message-ID: <20230612200733.h3323ktcggbeil3q@halaney-x13s>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-12-brgl@bgdev.pl>
MIME-Version: 1.0
In-Reply-To: <20230612092355.87937-12-brgl@bgdev.pl>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_130742_856481_E7727DBB 
X-CRM114-Status: GOOD (  14.93  )
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

On Mon, Jun 12, 2023 at 11:23:40AM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> There's an unnecessary space in the rgmii_updatel() function, remove it.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

> ---
>  drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index 5b56abacbf6b..8ed05f29fe8b 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -117,7 +117,7 @@ static void rgmii_updatel(struct qcom_ethqos *ethqos,
>  {
>  	unsigned int temp;
>  
> -	temp =  rgmii_readl(ethqos, offset);
> +	temp = rgmii_readl(ethqos, offset);
>  	temp = (temp & ~(mask)) | val;
>  	rgmii_writel(ethqos, temp, offset);
>  }
> -- 
> 2.39.2
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
