Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED676CA1016
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 08:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wk5ZgEKlL4ULZOkTG8ch1ZPXFbRrO0c8zqrNJud0mWU=; b=vbZYhNTjsiLvV1
	r0WjYVuyifKw/x6UGpjdTf4/FmV5IX85JroOi2TivlXSpah9k8KA1oGay0+U/o+xk85p6XRKsytgP
	1VBqchBMyBDg666KJhmjKQDZ/CxQKd7iPDkyjVZ1MG+LBusBjGHMbJS0Z8vLu335mmymKSUDCL9uP
	43GFNmolZdAorWsHoveOXnSkwVz4e218DvBAgDXyu4/7HU3IuZSOROKNLrqYCYiXAO4ni2iyqRbuZ
	kMnM7xXTldyLLPxPAs6NvyBOwkHdKhKvSSJpeVrFeDUIgG644ex/oEpUsg7pG6+NPjlN7AHhiOX2W
	zIBqPYHLn3+zacmB1YIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwd2S-00000001vmG-33Tk;
	Thu, 11 Sep 2025 08:52:20 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwd2P-00000001vlS-3Gdi
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 08:52:18 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3d44d734cabso406775f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 01:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757580736; x=1758185536; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=u8qJmsLMZ59bKpzRgTLez2aQP8hw0rBkTZMNNSe6hBQ=;
        b=jNFXdWrbuLSmpAmjpQnaZkMZp6PFsvIVsokbfVzdDqGVFOoitsocIzwjCELzrR1HI8
         SqCNZEcpioaB3Yih089Liy9mH6vEjpkKMHyw/j0VqW/heWRocHFByGo3bpecP5xF/Ze9
         f7agm5wdwkYRpm7rDZ/+7deUpEsiwepbZNYHJFl/yU8iw/0i29JKQy6kyI0oXNm4jsNx
         r5xOOa6suiPX5Mip5ma84EbA2iuP70ZD6CfmbcNC6wXDGG3M3UIOJSSmdH22e+G0vqda
         DUFQasMyGPQqCZB2WwTKFr4NT6h2kO753R9oPU3WSv7gucejt008DzWSAqfnRp9sf+wL
         5tuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757580736; x=1758185536;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u8qJmsLMZ59bKpzRgTLez2aQP8hw0rBkTZMNNSe6hBQ=;
        b=WlnleNT4yd00v0K3BXS8InFzIS2j0Tten5UBO7l5QnTZed30dobn8sHlhtJQbVhyyN
         I0McbvtIuAvp64VosUZaOy6ASdr7p/q+foRa+FrguAsAAFzK80mo4M3HOXG13Sl8Imqz
         qm4rNvSLFPkqpPrGkZyhZMB2nGhcOQaFgh87wgrNU7jvB48mmGkJYstCHX5jvramAqCt
         Z1aY9uMyruzlVSyPV4Lkw4dQvGasayi45eT0pSIlYgR+jDbspHL81QYnpKHBKA5bU18+
         BSwLmFisEVs5z3Vx61L7RKImFEtbVrrujvGS5MeEFr9xrhBdoS4qoh8B1LxYsRi9mFg2
         kx7w==
X-Forwarded-Encrypted: i=1; AJvYcCVfTZ0EZgVG57LSZeSAsvzPCKOk6U1gOggojis5yxhAKFFgvrPJeRzaq59Yp18HV/tOykv0NtSVl3U=@lists.infradead.org
X-Gm-Message-State: AOJu0YyooeS+c2xGszOJ5TMbTCKyWY2N9MLTxjet9v9iBZJViiQL/uqJ
	tt1TQhNJBdqDUd7VyAkO4CHrWW4NipIisOzwBTr3W8eigHzQnZcT1m47CYnETlG/BbI=
X-Gm-Gg: ASbGncubu1soNVB9D3YIzW+xE5vUCrMcJntyWXIRMeRyjtEZ3Z951UACHEc8z0R5+sr
	+JhnAGdelEx7iAUp7TSdNB7W2Ft59Eq0uQesbRkz5OxQc2b26usEyuA4hedih0GFHjo3AsqwoOT
	aduOmZhA+Rr9IPnPmXOmZ5aRRBqZJkxY1k6kqpPsXz0GG/8XXVMuO5y8b04c/OmJtq7/2XQMaqv
	y9mg0vbwjSk14kyLC/gP3Q4f5jwLqmiEs7KM5SV2kKldqyaXtvi0acgSEm5jF98jjUr082oT8v0
	s/G7R08eGoJYpE0qDa9cnv0aZjUb67rptLOOgZ7x0V0narcLiFqP6QRaxAE5Z4orpiUU0NeVHV9
	sMgv3OEPPDIcn6DuLyB9H+w==
X-Google-Smtp-Source: AGHT+IHqlhwEH3jYn5iJwUlpidH2lKZr/CFhHYU+IwRD/boV7YUGofPRtjLqATt1fADPaiU6f8KjMQ==
X-Received: by 2002:a5d:588c:0:b0:3e1:6b:bb17 with SMTP id ffacd0b85a97d-3e64c4a8213mr14929470f8f.48.1757580735700;
        Thu, 11 Sep 2025 01:52:15 -0700 (PDT)
Received: from linaro.org ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e760786cddsm1619682f8f.14.2025.09.11.01.52.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 01:52:14 -0700 (PDT)
Date: Thu, 11 Sep 2025 11:52:13 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] phy: qcom: edp: Add Glymur platform support
Message-ID: <wetzewmbraeawwintmxqntjhvennq5iu2jeegel3glk7y6rsnf@4vwscm5bwezr>
References: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
 <20250909-phy-qcom-edp-add-glymur-support-v2-3-02553381e47d@linaro.org>
 <3bo2xr3jb3hrzsetjzd62dmcif2biizvoanxwtyhr2dmkb4g7x@dgrcvzujcwgq>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3bo2xr3jb3hrzsetjzd62dmcif2biizvoanxwtyhr2dmkb4g7x@dgrcvzujcwgq>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_015217_837727_55903175 
X-CRM114-Status: GOOD (  19.91  )
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

On 25-09-09 14:12:46, Dmitry Baryshkov wrote:
> On Tue, Sep 09, 2025 at 01:07:28PM +0300, Abel Vesa wrote:
> > The Qualcomm Glymur platform has the new v8 version
> > of the eDP/DP PHY. So rework the driver to support this
> > new version and add the platform specific configuration data.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-edp.c | 242 ++++++++++++++++++++++++++++++++++--
> >  1 file changed, 235 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > index ca9bb9d70e29e1a132bd499fb9f74b5837acf45b..b670cda0fa066d3ff45c66b73cc67e165e55b79a 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> > @@ -26,13 +26,15 @@
> >  #include "phy-qcom-qmp-qserdes-com-v4.h"
> >  #include "phy-qcom-qmp-qserdes-com-v6.h"
> >  
> > +#include "phy-qcom-qmp-dp-qserdes-com-v8.h"
> > +
> >  /* EDP_PHY registers */
> >  #define DP_PHY_CFG                              0x0010
> >  #define DP_PHY_CFG_1                            0x0014
> >  #define DP_PHY_PD_CTL                           0x001c
> >  #define DP_PHY_MODE                             0x0020
> >  
> > -#define DP_AUX_CFG_SIZE                         10
> > +#define DP_AUX_CFG_SIZE                         13
> 
> If it differs from platform to platform, do we need to continue defining
> it?
> 
> Also, if the AUX CFG size has increased, didn't it cause other registers
> to shift too?

AFAICT, all platforms have AUX_CFG0 through AUX_CFG12, we just didn't
need to write anything to the last two so far.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
