Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63B34C7619A
	for <linux-phy@archiver.kernel.org>; Tue, 11 Apr 2023 05:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KtmJAtssqzgRkG9QQ0U7KlcPyWJLJH4VhF/HGXJPoy4=; b=Vcb5bruti409oY
	QUy8xrenyEGNW0YcnxvNuVPIzO+E/Nw/uLHy2TJjOo6+eIx6vlZmrx/Op1SHjqqZ8qvIOVcXc0dO/
	W9nvHYdfc9q3eIvtXAi9VRYxH1OiFrZZYl8rv0q7pjmWoM09o+YpC/lVE1IlruYJ5EUkrSeP/5lqc
	kXrP6ltThH2KSkNm50Vy9waGy7QWxQc3R1vRTc1Dq2QBFf0HhCPtFgjhIKl7Tq/ewkXkgrGZV4F+6
	za4/W8yhs79vloXJI9BdNNICD10PswC83YkTwGCywzFcEKjMQSch7UCsE+0mHLPrrcfmtnaTzOM71
	X5Icfkii4HwQ9oZ36HTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pm6dn-00GSvs-0D;
	Tue, 11 Apr 2023 05:34:03 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pm6dk-00GSvD-3D
	for linux-phy@lists.infradead.org;
	Tue, 11 Apr 2023 05:34:02 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-50489c109f4so1909346a12.2
        for <linux-phy@lists.infradead.org>; Mon, 10 Apr 2023 22:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681191238;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wkWD79ipH+po5ISBlzkaKK3V7RlQmj+WDbDZ6NA6eNE=;
        b=OmfNA020h/697ESQhqcF3FPp8ZOviAEurDFUlaWkoytba+zXb7KDbxxmuSw3gjELed
         1C1hoIpU3aImiqsA9V6R3YjB5AzeanBuv8k5z5bS5aXweQsHRiqFOV1MsU2tcfjf9872
         Ha8AN5DuKDGzgUDagPA0D+kFmxVol1LGCqwj8RF32mEhoffjYC2sYiSAnUeWm3P0S2ts
         5ti/lVMtNEC2MOQzzIFLPAEqbPU/f7e8LVNwim1GJIsLElEPa++33TAdqkOif2NvZ3gj
         8tNaJNIIYzO0MFsRj9D0mWm1T8icbi6FuGNKh7FLmSvY6NdgMsYNDiCalXvbalk2yY92
         HUWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681191238;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wkWD79ipH+po5ISBlzkaKK3V7RlQmj+WDbDZ6NA6eNE=;
        b=wSWjmPrUXZ2sjk6OoR+DslpXxXOv1J1VLv5Pt58XkVMgQ8HI/z9PwmxnzoslzrOt4Q
         mKJ7zabQ8kHXa40qTSWOIvMauQZTZ2kET4grABIIcqolGFzEfYUvpefUhQeFvgqUVFIW
         mf/zxMZXw/RlZ3VRGngZxGSqMzDZlM3IGdEcdhxwnfJk/EO1vgnyrgQmqh4S/KCbTH7n
         7KvQ7ihBSYsJQswCcipYOBqX/+T1TfHZGMJubtr3q1o0su1U65NAebmahxLUWhKj2eWw
         ffJJUbT5GeyiBgl9pnwKrQiCvLE2vF2NxvDDbvflgvvLEhm4M+oVqHfrsLPMpwzQ+e9G
         w5zg==
X-Gm-Message-State: AAQBX9fu+/Iv9p1TW2uL/I80y3jfeEwum14jg5S2hJlxv04fohPVtOp6
	GQ3+DS4CQxG/bGGUP1eq7xCOP4DdIW+7ut3JD8S7Dw==
X-Google-Smtp-Source: AKy350bQYGlaHy4QryASpqvVadU3bZ30sQLxHLHpnwjSurrdvLijghPUlqa53Q/kk+9D0EPOXdUDwg==
X-Received: by 2002:aa7:da17:0:b0:4fa:4810:95f9 with SMTP id r23-20020aa7da17000000b004fa481095f9mr11438378eds.34.1681191238596;
        Mon, 10 Apr 2023 22:33:58 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:dad2:72b7:3626:af61? ([2a02:810d:15c0:828:dad2:72b7:3626:af61])
        by smtp.gmail.com with ESMTPSA id b15-20020a50cccf000000b004c10b4f9ebesm5509934edj.15.2023.04.10.22.33.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Apr 2023 22:33:58 -0700 (PDT)
Message-ID: <eca378d3-8743-a0c3-5f54-faf4ad37e9d1@linaro.org>
Date: Tue, 11 Apr 2023 07:33:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom,qmp-usb: Drop legacy
 bindings and move to newer one (SM6115 & QCM2290)
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: agross@kernel.org, linux-kernel@vger.kernel.org, andersson@kernel.org,
 bhupesh.linux@gmail.com, robh+dt@kernel.org, konrad.dybcio@linaro.org,
 kishon@kernel.org, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
References: <20230410171010.2561393-1-bhupesh.sharma@linaro.org>
 <20230410171010.2561393-2-bhupesh.sharma@linaro.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230410171010.2561393-2-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230410_223401_047612_7E77BCF3 
X-CRM114-Status: UNSURE (   7.96  )
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

On 10/04/2023 19:10, Bhupesh Sharma wrote:
> 'qcom,msm8996-qmp-usb3-phy.yaml' defines bindings for several PHYs
> which predate USB -> USB+DP migration. Since SM6115 and QCM2290
> nodes for USB QMP phy are being added to dtsi files by followup patches,
> move these bindings instead to the newer style
> 'qcom,sc8280xp-qmp-usb3-uni-phy.yaml' file.
> 
> Since no device trees use these bindings presently, so we have no ABI breakages
> with this patch.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
