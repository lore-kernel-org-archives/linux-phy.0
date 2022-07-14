Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D0A4CCA482
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8qwtf8+VajR0eYYVUPkJk7FPNfkiAnOLbb2R/2uW43Y=; b=Jxz3NbYqa93BFO
	SbSdC/3aL3silOjDqXURUR13yPbrwP0/BtB5sd3DSu5Jem3rdI7apuf2aCNwVoGvxxiSjc0rhhs4X
	GdRdekXStrgzvjy1Yag0LqRvKIcJk+s6w1Ylh0ctkSzg0NFBEZO09r5eBXi7tL/XjXtpmwpdmsqdz
	6DHh2jcWPJOWWlC1XAr4siVZ+v4euMkmCI5H1hP0p7HlchfY8IdS52VjjVRr3qaFuRISSQVX9r65x
	eG6yAyKQLNu+jkXz5z42Nf8iqcyx/Ez0lU9rdX8NXnAq3A6Y3Gm4sl7N+nPCeCUrI0hBRj9mVhRTQ
	UOqdp2uA9bTe+zfbnndA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuux-00CheC-Ju; Thu, 14 Jul 2022 09:13:55 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuut-00ChXx-P5
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:13:53 +0000
Received: by mail-lj1-x232.google.com with SMTP id u14so1446232ljh.2
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=YSaLOo3uvJc2rTh7KMA4aG1KJJmXpp9TQCunK6o1eqo=;
        b=HJzl40vM7NVVmag2wEVD3j2ELJbEz1mUFz/1ap7mFAMQwyfApIwYNtlbvTWCrbCn8N
         lzrtQdsRm2ayRKGoP5XtjVzY1mq4/LkkC5kXHIA39KRhfobj5JaZ1sskXswRLHmHBGqf
         W2/P0P74h3+SAUgsLq/7HhM2aBi4BxlQ9teduoRxgVmZiPqey4ad1AhtDcwCgz+L1U8s
         2PBuAIhjsB0wyzP2VZVxH9F6vtMBteHpZBt6uWHUeidw36EN0789FKGF2zx4MoYiOTjr
         ABCojRIwRNPutNy9wZr3BXmZiOQSB6lQ73gQZudS7cFdFzemVopZBhThpzOWd+Jjm6vw
         3VhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=YSaLOo3uvJc2rTh7KMA4aG1KJJmXpp9TQCunK6o1eqo=;
        b=j1PPa6ACdpRbxp26qlKe+zT2kBqf5R8nelDzf6/RXA3/Zic4Xcz+yreLLk/VMTTCLO
         QnrJdAOD88emoNeRaTodUWv20Jt5lVAjrJdbVXMXlgUn05agCKmLV1KcdNdK45Xb5Nkl
         Jfx/HgHIQHB+gw5dCkyxu/Bp/FhcnabAhAkIJSpM9oHtHLRhlzgwQaqezUiz43vKqq8k
         uQnspRUMhoAYwW8uVagkBirVEMw6shQ9RvEAASaBfdQicZp3wTgi1KPt2OSwWOqNmhKl
         fcx6Fw/tsqeRZ/nlVRwKDc8RN6phzW1iJkwc56Afi8DoLysmHgRd27VWpFiLVe+21w8R
         zCUQ==
X-Gm-Message-State: AJIora//mrDbsK7cc//Ot2f+FTuOrWk33Njw0RWd45oaEKnJ+unYZWjB
	tEVDS+mMve/vKquh5dIpgZB4Hg==
X-Google-Smtp-Source: AGRyM1vuqxlGG04+b96O84F7+W2zXY/cg945cr6JRYD7Cm7ZFVyOiQd+TX4lD9N+ST50d4dEeWDl0g==
X-Received: by 2002:a05:651c:243:b0:25d:9aa4:d7c9 with SMTP id x3-20020a05651c024300b0025d9aa4d7c9mr1363015ljn.35.1657790028879;
        Thu, 14 Jul 2022 02:13:48 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id t3-20020a2e8e63000000b0025d4866b2c7sm183253ljk.4.2022.07.14.02.13.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:13:48 -0700 (PDT)
Message-ID: <6e3f32b1-ab9f-13de-19ce-1433c6d74119@linaro.org>
Date: Thu, 14 Jul 2022 11:13:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 10/30] dt-bindings: phy: qcom,msm8996-qmp-pcie:
 deprecate PIPE clock names
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-11-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-11-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_021351_914407_AF81B9A3 
X-CRM114-Status: UNSURE (   6.88  )
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

On 07/07/2022 15:47, Johan Hovold wrote:
> Deprecate the PHY node 'clock-names' property which specified that the
> PIPE clock name should have an unnecessary "lane" suffix.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
