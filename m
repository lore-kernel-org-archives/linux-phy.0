Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE305C83F33
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 07:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qVcZuRuyHwItnl70QIQtzaXRc/yig3Xv5Ixb1iPLx80=; b=DmWp77TE6AP0Na
	FYpsM+0G+nJuRtCzSzFd7iBSqDeEU127QnZu5xZuiR6Y2/XLUj8XWGlauta5n5YDSIuot/LY2WWbE
	GmxgHhCO/c4DVVi5UMwJWEfFnmxsZBnCthMdBj2RLgwdLWiqDJi28BKAE8gNTszn5F3lwfHyDKDno
	iy9oEz9Ds9vQoWUn3WhP68nGMSrIjBQlRj+uKDkuxnUFTeItZKE7FBPi4PmkAyjqc1zK5uzAbeLTp
	k8rZnSaRYzNEosHZu+raX1Tfl8kU875tD6ET+W8WTCvDcyLzmceX9Sa9wn3peKhJlLZS31bjlLi/d
	DbQrWpms2KMUPFWkJzMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdQMh-005RKv-0n;
	Tue, 05 Sep 2023 07:20:47 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdQMd-005RKF-17
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 07:20:44 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-52a4737a08fso2817147a12.3
        for <linux-phy@lists.infradead.org>; Tue, 05 Sep 2023 00:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693898440; x=1694503240; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LmUoOK0lN5gj+Il6SCFX8BT+dF5nWWi3v992EvHZxAo=;
        b=vBQ0ACcaZs04uIM8+NnQ9QyKLqL3HvEysT/EYutfSDxPZpb2Ka0e7PHrMNlOGCMkVK
         l+ShtPD9c04cbMMIgPFaylUJaf3NL7ZMGHU4e60Dpe688XCTv9CGT6WRr0jg6jnFMIl+
         yUFSQ+E2SN8wxNrC9Oyc+G4PJzv1QwGzZcsBs2v38tafV1t0YKOGMAvzWzPKhjc6zvzy
         NPmSurDi0cjdUv1AJPVr5m78rHc0xRFZA3iSINtw5ptl9SaoUckrTYxEy4DeJ90NLARR
         GVFWi0DrCL7eLGNREZAhYg+HomTip+kGeG5i5CAgv2Fpmi5jBaigU4CSsVuOtdsH6Wr1
         c6dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693898440; x=1694503240;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LmUoOK0lN5gj+Il6SCFX8BT+dF5nWWi3v992EvHZxAo=;
        b=DNvrXiiXE+/sU0Jcd+VCDNG5P1zDibvJ+5tc9UwZL13cLFM170qDwScnT87QEeo7YM
         Fh5qvpC9JygFMjnmfo8sn3GlSnSJ4W2I4ZpT5ODwfHjLhgytK8fLyPfltaMwDWPHeHPj
         SCupM7zoeqONLZsrl2nBLpXzPyUyUFSGzf7beBSyghyO0OST47JtWyt+7dk6hPSyCJDA
         Vp0qV/+q3C2FgVGIPKT8TJzzstTsOAhQ2pcYNOWoOhy02fNC0Gz6wNXA9Ii0JM+cilOp
         ssUyzyjrCsx5ez5qnSXghXc0l9GqGh00XlxfkiV3Dzk3ua09kmlEerNekmYbxOua/xxj
         wpZQ==
X-Gm-Message-State: AOJu0YxlNc/UNYi2GeDfjgSEb8j2+J4A7DT9YGYrf+/5hf7X947J47zj
	LaFYE/+gG4VJ6Taf0q3p6DLnCA==
X-Google-Smtp-Source: AGHT+IH6F3jOPjgAFKoncqqEKzF4um6HfdS5m64nKXUK90MIZJaWRctyovZeFwGPrb0l4SEs5mqa6g==
X-Received: by 2002:a17:906:3101:b0:9a1:cd2e:212 with SMTP id 1-20020a170906310100b009a1cd2e0212mr9270422ejx.60.1693898440476;
        Tue, 05 Sep 2023 00:20:40 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id ox29-20020a170907101d00b00992ea405a79sm7187418ejb.166.2023.09.05.00.20.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Sep 2023 00:20:40 -0700 (PDT)
Message-ID: <4bd9e859-cbc1-6b8b-9c22-0a1745924475@linaro.org>
Date: Tue, 5 Sep 2023 09:20:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 2/5] dt-bindings: phy: Add qcom,sdx75-qmp-usb3-uni schema
 file
Content-Language: en-US
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, abel.vesa@linaro.org,
 quic_wcheng@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, kernel@quicinc.com
References: <1693889028-6485-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693889028-6485-3-git-send-email-quic_rohiagar@quicinc.com>
 <0a2fcbc0-4b18-a54c-9f91-9710cc0bea1c@linaro.org>
 <00bf888f-1501-70d6-eaf0-2592a36d1114@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <00bf888f-1501-70d6-eaf0-2592a36d1114@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_002043_429548_2DF62AD6 
X-CRM114-Status: GOOD (  11.20  )
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

On 05/09/2023 09:08, Rohit Agarwal wrote:
> 
> On 9/5/2023 12:19 PM, Krzysztof Kozlowski wrote:
>> On 05/09/2023 06:43, Rohit Agarwal wrote:
>>> Add a dt-binding schema for SDX75 SoC.
>>>
>> It's the same as qcom,ipq9574-qmp-usb3-phy.
> Seems like this change is not in the tree. Will rebase my change on top 
> of it and mention the dependency.

??? We do not talk about maintainer tree nor next. This was merged in
mainline. You work on some old tree.

Sorry, rebase and recheck all your patches on latest next. This includes
running smatch, sparse and coccinelle. Do not develop on anything older
than maintainer tree or next.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
