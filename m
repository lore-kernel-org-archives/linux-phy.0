Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62BAAC05027
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 13:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+KBYVcwiXn9U6b+2oPWMT8uTLZ+nmgd6xothXmZAS/8=; b=W/+zOxZEzYixSs
	UvhPWb2nKkeFcu+r6unWvnu9lGQW6ZOcP1AXYM85u9eygPe0RmmDNnIEvyBDmptvhojB/VQvZQHD4
	uuSbuLuSiURk0OakfBhmxkD+FkIFXW4zRcXNfT8+/KvMF/3sEi+AzwDWzx0PlnDY/MxbyAlu4Jc17
	CaV4WFbZwEh9pTFRhx4d5kKuV1FdKdCo+UA5r6r7rhoSJPXuOxKJ606IJHh348w81NHV4dId89nHk
	GYZQgTYPGPtlO6/vYMYz0eIWSvqo2py0vs53Wb1mMfRtx8y5vkp+7rkkT+PT9lLHX1ZPg3QZu8Aw4
	O58NfGvEFSc9vLq/EHJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZoi-00G2lt-Rq; Thu, 02 Feb 2023 13:39:56 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZoe-00G2kx-Ju
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 13:39:55 +0000
Received: by mail-ej1-x62b.google.com with SMTP id k4so6093815eje.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 05:39:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nOv+O6zRmUrFD0uKzmPzZGG2FDBXrF4XdsrfBoPTGUc=;
        b=vUMM47jh0Hn9jMq8XlmIzznROp5tNj9M3E20EBCXzDNdfg9tpxaCSxZyaoYuXBhwNd
         mUawpVXDLMf2rtZ6Nr3J34EhpCLC3K0I9qqmpz7gkVwEAOB0baBD9jyPCy+hDJUuVYsl
         BEQGLxmZjhJs/v725olxhp1yKzQI552zwBnwwDxeYoRb4OxcFBR+VuMyBfL7mW9CRflE
         grbBMYas0CAfDkpNJVd8DEjsRXBhgTSuBsnlWHGMhIa+nzJv0VFiHm3e+aHaUruapgGe
         pcobfm23HQtYahng4IIdF/kSh+YPSvCbacEf7gS1jys91UhfHT22/iC2m0BEZJ699hWw
         mTCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nOv+O6zRmUrFD0uKzmPzZGG2FDBXrF4XdsrfBoPTGUc=;
        b=ePTx5neZR5OEFWSacW9l0dKZvCqRV/R5uxyqToHRufUFs1GgCrJblG/V5GwMLBedyG
         0dOcwzkNQ8XQJr/Y8ogLBifW0tObD0LucLp3uFgufT7PWEWsbnnzGffF3tXipiFdbaNS
         tJsffBHQL2vzfJggZuDDLxb/DViP4fG2V7ofUeuLJNju0NjbBUJJdQ+tCcmJ8pq+S23s
         T4AZOtctzZJhm8NbmEvRyYXuXcV4dw03/pKbzy0mfqwLkirrlvURAGGHs4sGCX8yVlkN
         5fAjOXhwK3ZOOUaOIX7pv4H4DLF0/rvt89gQfur/0atocmxEY5eodwqVzVHUUHLKxAd2
         VzIQ==
X-Gm-Message-State: AO0yUKXyW2WXyAhYY2wAi/KYWKIZy4VbOy/wa6izg6UKWPgnC5M7hBnQ
	ON/GuuJ8m4RiKpXhPGM4cPLa+Q==
X-Google-Smtp-Source: AK7set/ZxyMyyz9Bp5PIVV1qOJD6NYAU1bwFe+AQzAg2Sq4F7skPhJ6Yj0Rjrcdg9Z/iWxC6+aI05A==
X-Received: by 2002:a17:907:3f9b:b0:7b2:757a:1411 with SMTP id hr27-20020a1709073f9b00b007b2757a1411mr2338440ejc.9.1675345189464;
        Thu, 02 Feb 2023 05:39:49 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id g10-20020a1709061c8a00b0088c224bf5b5sm4302204ejh.148.2023.02.02.05.39.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 05:39:49 -0800 (PST)
Mime-Version: 1.0
Date: Thu, 02 Feb 2023 14:39:48 +0100
Message-Id: <CQ84AYQ4TTU1.JLLJCL8OFCFQ@otso>
Cc: "Andy Gross" <agross@kernel.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Kishon
 Vijay Abraham I" <kishon@kernel.org>, "Rob Herring" <robh+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Johan
 Hovold" <johan+linaro@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 0/3] Add USB/DP combo PHY config for SM6350
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Vinod Koul" <vkoul@kernel.org>
X-Mailer: aerc 0.14.0
References: <20230120-sm6350-usbphy-v4-0-4d700a90ba16@fairphone.com>
 <Y9u4cAK+uKXuu+uL@matsya>
In-Reply-To: <Y9u4cAK+uKXuu+uL@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_053953_519640_0C02EA57 
X-CRM114-Status: GOOD (  15.15  )
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

On Thu Feb 2, 2023 at 2:19 PM CET, Vinod Koul wrote:
> On 23-01-23, 14:29, Luca Weiss wrote:
> > While this patchset started out as just adding a dedicated init sequence
> > for SM6350 since USB PHY init didn't work in some cases, now it's also
> > migrating the phy config and dts over to a new format.
> > 
> > Also note, that the DP portions are pratically untested since TCPM
> > (type-C port manager) and possibly other components aren't brought up
> > yet.
>
> Applied 1-2, thanks

Thanks!

>
> > 
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>
> cover doesnt need sob :)

That comes from b4 ;)
https://b4.docs.kernel.org/

>
> > ---
> > Changes in v4:
> > - Fix dp_serdes offsets in driver, add dp_txa & dp_txb fields (as in v2)
> > - Fix order of resets in dtsi
> > - Link to v3: https://lore.kernel.org/r/20221130081430.67831-1-luca.weiss@fairphone.com
> > 
> > ---
> > Luca Weiss (3):
> >       dt-bindings: phy: qcom,qmp-usb3-dp: Add sm6350 compatible
> >       phy: qcom-qmp-combo: Add config for SM6350
> >       arm64: dts: qcom: sm6350: Use specific qmpphy compatible
> > 
> >  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   1 +
> >  arch/arm64/boot/dts/qcom/sm6350.dtsi               |  54 +++-----
> >  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 139 ++++++++++++++++++++-
> >  3 files changed, 154 insertions(+), 40 deletions(-)
> > ---
> > base-commit: d514392f17fd4d386cfadde7f849d97db4ca1fb0
> > change-id: 20230120-sm6350-usbphy-87c5e3f0218e
> > 
> > Best regards,
> > -- 
> > Luca Weiss <luca.weiss@fairphone.com>
>
> -- 
> ~Vinod


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
