Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0BFAC433EF
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jun 2022 16:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XdU4mvEB79UDGEU0BzTNruPRKZgXuPsSVWtKYCa2iw=; b=P0ntePBQiRQza1
	x3OAmBGMKBWhx6iC+chgmhxrfL6ZmrBO816xLhfsij+2AA14yeVDxD/OPRVaxDOPj+NNVbN2QKjDJ
	zc+8VVuEbdIbyDA/9Ywd/jXwIEKUENWYoOI2N2uDU1GlTnW9kQUf4Y1kSrish93pa27xOSk7XVBmW
	5KLbwRUMto++wRARKeqiBTC7fecphoBS88DWU+Mof0eUqqDrY6ZiaUUZspvv6sGH1ZD+1ddMTkiMu
	UYwIl6XnVQDJOYCkB+M9DriQi/0OG1PAr22e4q8t6HaWg5F1qxxkOqi3qBFOyxwvrHcMMwnf1HKNX
	wjk6NFfWbhpgFdm6TBDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxsoy-00Eqj0-W8; Sun, 05 Jun 2022 16:09:45 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxsnf-00Eq3Y-JV
	for linux-phy@lists.infradead.org; Sun, 05 Jun 2022 16:08:25 +0000
Received: by mail-ej1-x62d.google.com with SMTP id n10so24749160ejk.5
        for <linux-phy@lists.infradead.org>; Sun, 05 Jun 2022 09:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=V3KulwXriouN7eiOyT0B/Q5x0zkY8WXHHcxmUV9w2Zo=;
        b=UlXeoLoPUmU0nPRjMSnknHIfP9yibqMNppALxbJ7X934DvZCM4ztooLXc3Py/cJwDe
         CReMe7p/hnSh2vbmgVnR+ylX3nwNh2GpZVBlXVCTPiqhKMFEzcSocwR7OaiseQ9DKFfB
         wDbQlcemkkLVg4Gvc/TLn37KYYdzLKZsVdrhOAIRSB3ekYlf0/nvXW4pRWdbLSqnpWkt
         xAcApZRMpmCxrbw5Qm5rWK24hTC8CRzjiRXVXQgcFbsluIAE47UyooL+2gsNa6KQIoxm
         N77asbG4o9m6N9WCA4FQxj+oBMuzniOskF7ZVI/He98Z6rA64O0alhDeXqJqF2lxEKMt
         LjdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=V3KulwXriouN7eiOyT0B/Q5x0zkY8WXHHcxmUV9w2Zo=;
        b=tKpVU99ODC4qeq4ivdbgvdGdj0kyquCK/LOfKQ0LhAyLspn2rS9aexmHBtvcsL/4QZ
         F+i2yUvWQ3uXg0gawZR+Uc+9LCtI8CmOG9pxxIoiCUjEAkuf0eQ0NEnkZTvleKG5gY+j
         ZgRzhLZKUBhyftA6PD5e2x6YmqED+BxVRbsF0zn0VXR8FZbY0BgwXJQ/fbGS+kw+P55z
         UFwYXfpsG7960V5lw4ffykW5T3HcidMYUVD3URRhKwU55oWZX3aHLsRQxYqoXm1t92lf
         rzvdhYhCcOyq2YtyGuP5DGmJpqUbT0wIjAPVejW4qYTQuSwOOgb0lsNQpFxlzoVTyivK
         rkTQ==
X-Gm-Message-State: AOAM533A/3hnUWCIqYGpnqcthRUfPoKPetaYugjwTwIEUbe9tPV4UXFk
	fkSVejjH1uZjDgzyKzqcN7Bw7w==
X-Google-Smtp-Source: ABdhPJyGaFicfO+SdTtgmzg7DPV7oVp+iUJDVqJZsfzrZ44MneA2ADvTEsKPzPGjU0XMC7eISXgIEA==
X-Received: by 2002:a17:907:a407:b0:704:34ac:835c with SMTP id sg7-20020a170907a40700b0070434ac835cmr17843528ejc.663.1654445301784;
        Sun, 05 Jun 2022 09:08:21 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id zo11-20020a170906ff4b00b00709343c0017sm4653430ejb.98.2022.06.05.09.08.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Jun 2022 09:08:21 -0700 (PDT)
Message-ID: <5a23d393-1dd9-fe9f-c2d0-7f86e2d1a74a@linaro.org>
Date: Sun, 5 Jun 2022 18:08:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: samsung,ufs-phy: make pmu-syscon
 as phandle-array
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220603020410.2976-1-chanho61.park@samsung.com>
 <CGME20220603020426epcas2p43e4c27b5a371e2fcdfa462c564d9c5e3@epcas2p4.samsung.com>
 <20220603020410.2976-2-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220603020410.2976-2-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220605_090823_681353_2FA3ED26 
X-CRM114-Status: UNSURE (   6.56  )
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

On 03/06/2022 04:04, Chanho Park wrote:
> To support secondary ufs phy devices, we need to get an offset value
> from pmu-syscon.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
