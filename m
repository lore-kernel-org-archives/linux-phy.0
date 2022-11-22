Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D203C4321E
	for <linux-phy@archiver.kernel.org>; Tue, 22 Nov 2022 07:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyhzJk28H3qCO663YVa/ZUoxJw2rv1Z59eJ2EaiyRaw=; b=WdK0b6Yhg2W+o/
	h9Yk+dz1dIjpmm98vWiVMiGNRbZQ5xbPM9m4jBltZQdcn3pfdv0h4oz4xJ0JTSxnc656r2RtuZDe1
	PEBx4pM0EDa2SKCt22G0iC9HV9YWmjvpMgnQYt34XPDajyrYKYGtokJYXVh3Z75zzcUOt9VcNaqrq
	5lVDL6kpN7uCOP/QdOg98n2jEGcJmyOJrgxg2WXQrJOSeejuSNRyn2/foEQ6PJNTJZYWlFjDKhgct
	F/vg57Tbx1yAW8Hs4XXzlc5Q6qY3Lx08PArPpwGPOCEb26KcHpOSXFodpy2SgKxedlZXbIP/5AbeC
	vpV1yW4zqlI4K71+H2iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxO82-005zJB-RD; Tue, 22 Nov 2022 07:55:38 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxO7z-005zF2-VJ
	for linux-phy@lists.infradead.org; Tue, 22 Nov 2022 07:55:38 +0000
Received: by mail-ed1-x536.google.com with SMTP id s12so19469797edd.5
        for <linux-phy@lists.infradead.org>; Mon, 21 Nov 2022 23:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7VrZzkD1Cr8qqJBfT7GRoGj/Crlh358pGAEmxK6rqjY=;
        b=s+8VCn4820xwQ6YRzOkeml1/cJ9VNCx8dMHCmCyqHZqwkYfdwL9GLdq/RQQlBSX5Dd
         C6OQhf5D8ZhMXDKtQBqvIgm5bw/WLtw//GlfI7TRzN5QHIRwDIHRDoXz7nQgW5hiyfdm
         QVVTxQ7ST2ouMebLDuo+sTVOnWyoVFqQ5Eyab7hX0Zc3xpubLYf2C51rWya/uY/frYO7
         aoxZ27bQWrxsTjE5Xt9AaMxdtH5Al+EWVCw/M5Itc7xoxDQMQRKoSAUe29qrYmkwcOjW
         B4MnwRvMzn1XlM0aDSY50uU0jCAINlpv5FU5OY+UCeZlOaubWjRB2uaRKC8+5lT/zM5c
         Ll1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7VrZzkD1Cr8qqJBfT7GRoGj/Crlh358pGAEmxK6rqjY=;
        b=ohNCM/fnX7AbgVPWlmrgnpr8c+SjeLmXTgStT6aiDTKBwtbSnOhiVMpWTkcxxJjOhU
         NYlL2gh823EfzpyRqiFt0GBEHoZ1E/mnEZB66ptFml3lzgyINk3M3/3aZR+O7mkEnZ0z
         pDvIXjtrsSCAadSl/yktTshGhCribCMDFNuItf0UxzuOBN+8BpYkLIRNFyaM/LnKTfPa
         CGYhmu9bct6qrJ88XGkzl6zsYDNOwkrivvQJLM5FlZexfRVnoOA/R++f4es1VLMlg5eI
         Bu4sRjSzGQdq/E3jAjMlf6YqZWgYmnjF9c0XZv2tg9BgdljPaZLrP+X7nTX0eNmGsrxI
         cYtQ==
X-Gm-Message-State: ANoB5pmcl8jcnK+oOrcOgmQMl+UVLpHwqAyipe1wfBWV02WBRic8luUT
	g4zHfyCdnR/0tc8wh4tXfPl8dg==
X-Google-Smtp-Source: AA0mqf67m24Zi4PkGBuuRliY4SRbPsAGjpoT1+hR7vl2WAj0bSh/UQQm8M20UDO4OcQhMd2cFKGIKg==
X-Received: by 2002:aa7:cd8d:0:b0:463:19ca:a573 with SMTP id x13-20020aa7cd8d000000b0046319caa573mr19884464edv.31.1669103732262;
        Mon, 21 Nov 2022 23:55:32 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 15-20020a170906310f00b0078cf8a743d6sm5695025ejx.100.2022.11.21.23.55.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 23:55:31 -0800 (PST)
Mime-Version: 1.0
Date: Tue, 22 Nov 2022 08:55:31 +0100
Message-Id: <COINW4PF8OS8.2QJZZKVL58FJG@otso>
Cc: <linux-arm-msm@vger.kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Andy Gross" <agross@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konrad.dybcio@somainline.org>, "Vinod Koul"
 <vkoul@kernel.org>, "Kishon Vijay Abraham I" <kishon@kernel.org>, "Rob
 Herring" <robh+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Wesley Cheng"
 <quic_wcheng@quicinc.com>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,qmp-usb3-dp: Add sm6350
 compatible
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Johan Hovold" <johan@kernel.org>
X-Mailer: aerc 0.13.0
References: <20221121075358.76582-1-luca.weiss@fairphone.com>
 <Y3sxqUu0dnaQfdFY@hovoldconsulting.com>
In-Reply-To: <Y3sxqUu0dnaQfdFY@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_235536_867369_BFBB2CBC 
X-CRM114-Status: GOOD (  14.56  )
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

Hi Johan,

On Mon Nov 21, 2022 at 9:07 AM CET, Johan Hovold wrote:
> On Mon, Nov 21, 2022 at 08:53:55AM +0100, Luca Weiss wrote:
> > Add the compatible describing the combo phy found on SM6350.
> > 
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> >  Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
> > index 97a7ecafbf85..68aecb638870 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
> > @@ -18,6 +18,7 @@ properties:
> >        - qcom,sc8180x-qmp-usb3-dp-phy
> >        - qcom,sc8280xp-qmp-usb43dp-phy
> >        - qcom,sdm845-qmp-usb3-dp-phy
> > +      - qcom,sm6350-qmp-usb3-dp-phy
> >        - qcom,sm8250-qmp-usb3-dp-phy
> >    reg:
> >      items:
>
> The current USB3-DP bindings are broken and we should no be adding
> further compatibles here. Please consider rebasing on:
>
> 	https://lore.kernel.org/all/20221115144005.2478-1-johan+linaro@kernel.org/

I'm not quite clear what you want me to do. Just rebase this change on
top of your patchset and resend or something else?

Regards
Luca

>
> Johan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
