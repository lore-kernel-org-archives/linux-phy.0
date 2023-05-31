Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DA69C7EE23
	for <linux-phy@archiver.kernel.org>; Wed, 31 May 2023 02:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:Subject:Cc:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=werCYHjc4c2jQjI78Y9jksWFnDxsc58qqgOZDis5udk=; b=yf3nTqm1yqA4TB
	Jf7B6L5J5hn46rHuuYlkfQ1XwdMl963M+tjIUkvaa7Ieu/X5nqNFbIkKpHEGsyEiQMbbz0nahZhuE
	oDx4BqrxeF6i0OhAXYe6WNPomDPVHgXJYzZNCnU/cr8tb+37VorqaRbYDdD4Mz6e2KHQSs4Rk78TB
	IyCZK0WOtz68tVQVa5jTPbb/wahr59jv+XYNdr3sPkpFw6EjKgywpBIKuDsWF0SnV0jjxKUVyyYiU
	0wiMgd0ErNlSlhx81gKcPANauw7rV+8pS+ECQE48cLSviXfzm+j2uxTga5Gy3XrdGOvxbc011/Jab
	nZiTmF2AwggDGBOLG4iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Bts-00Fptm-0r;
	Wed, 31 May 2023 02:49:24 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Btp-00Fps2-1Y;
	Wed, 31 May 2023 02:49:22 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id 6a1803df08f44-6260b578097so24649206d6.3;
        Tue, 30 May 2023 19:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685501349; x=1688093349;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6e2j8yrS747eKvqEmOM0dcXUIRaD3dt4RVORVnxHAYs=;
        b=qqoBPw/WY+2FSw0nXRa+1jy91yIpTrEAKJn/AOAlD4lvNgY41wlUGC1SkH33Dr2KYk
         KB7VP94bPoNbN5qG3iVHTh5itAUJ1sVKSajgrsV3iHinQbx20UGDrK4siNz69pSbHY8O
         UmpV9E68jVUyZS2NErYZeeyyN5gz2SYBb5yNReN2Rzt7u6eOp7P7saURYQxdRMN1mFjl
         oadzzPD2eJlK9BS+Wb/VMSQmx3NpgrMhNsYfPRPPny3ZUbmYT2n/5qy0YdcWP/i7B0My
         5LzvvzD2GEfVfpahepLUzKG1+OCrZZR5NzqlrXAxQqSGAEwSNDdzHdLmX+9oVMrGroYQ
         gBIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685501349; x=1688093349;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6e2j8yrS747eKvqEmOM0dcXUIRaD3dt4RVORVnxHAYs=;
        b=c1KPnKbYKcAb7eWo037xiOWGNCh9DsRIT0fRco61vOttsnumNXWSCiRzL4um7njE0G
         hzreJNm7Sm1pRVAOxOQkpswU8Bxq8nXSepIYfKogALF8+5h2aaC42jN6xXE7urW0iqxD
         bWaHp6QJnQjwlcb1VZe4TVV0dqxRxgCdC+BGolNJsWNPpCBid2bueOfWQAHLWjvaJ2Rf
         HNdBsIVlNWDFBGqo74RpWSk/HgfvfOdESlvADsQMqcEGY50UVvKj0dG4lVAy0pgc6/8A
         GGypuw73hbnzH1Zpk9qVsykOqEXe0K8d4hcEj+fa5W65YzoMtuU5GGFrTz+DxCV0rapM
         gIgw==
X-Gm-Message-State: AC+VfDwsRzXIdKKdd+Jo/4VpGi10fxB1LFSfkR3roPDnQqUqj5fmxPGK
	S6e7l1tjSjyyzeU5ek/XtPY=
X-Google-Smtp-Source: ACHHUZ52Yw/1OjG4IhoiE6fZ7eKnLRhYKO0DIKGAauUkEl9PmXjiQG87Tlv0PJ/4VoneEdbKSvFcUA==
X-Received: by 2002:a05:6214:412:b0:625:9562:f04 with SMTP id z18-20020a056214041200b0062595620f04mr4884729qvx.51.1685501348941;
        Tue, 30 May 2023 19:49:08 -0700 (PDT)
Received: from localhost ([2600:4040:2007:9800:dcb4:7fef:9d6a:e79f])
        by smtp.gmail.com with ESMTPSA id er5-20020a056214190500b006262956aa0dsm1952230qvb.99.2023.05.30.19.49.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 19:49:08 -0700 (PDT)
Mime-Version: 1.0
Date: Tue, 30 May 2023 22:49:07 -0400
Message-Id: <CT04D1K5GOBT.29Y5DO5HHS57V@Latitude-E6420>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>, "Andy Gross"
 <agross@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>, "Konrad
 Dybcio" <konrad.dybcio@linaro.org>, "Rob Herring" <robh+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay
 Abraham I" <kishon@kernel.org>, "Arnd Bergmann" <arnd@arndb.de>, "Olof
 Johansson" <olof@lixom.net>, <soc@kernel.org>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2 2/4] dt-bindings: Add qcom,usb-hs-phy-msm8960
From: "Rudraksha Gupta" <guptarud@gmail.com>
X-Mailer: aerc 0.8.2
References: <20230527040905.stmnoshkdqgiaex6@ripper>
 <20230528001010.47868-3-guptarud@gmail.com>
 <fb65244e-ab3b-c473-57b9-2da80e67be4a@linaro.org>
In-Reply-To: <fb65244e-ab3b-c473-57b9-2da80e67be4a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_194921_542860_7B257A7C 
X-CRM114-Status: GOOD (  10.48  )
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

On Tue May 30, 2023 at 9:22 AM EDT, Krzysztof Kozlowski wrote:
> On 28/05/2023 02:10, Rudraksha Gupta wrote:
> > Adds qcom,usb-hs-phy-msm8960 compatible
> > 
>
> Please use subject prefixes matching the subsystem. You can get them for
> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
> your patch is touching.
>
> Best regards,
> Krzysztof

It seems like "dt-bindings:" is the subject prefix for this file. Would
you like me to use another prefix instead?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
