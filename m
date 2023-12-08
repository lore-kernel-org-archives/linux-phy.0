Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B7EDC4167B
	for <linux-phy@archiver.kernel.org>; Fri,  8 Dec 2023 12:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQxNiP4UmbAh2XgnSgILklvDPzd7E1PbzVgI3z1QmQs=; b=EZvfsZvfzoyjb0
	keLqPgouiBMOL9R/BMp1S6QH+MQ/4CemexUbYZnR9fXZ6GMuNTgGdzrteAN3fnmFDrAmwTTQwXIn1
	SKUxvvs8LVyfWEazqdkwYx+pAXkZ4gFmsvlb65x+mT+ChLcL1I5nTkPoT5GVLlWlj5ZG4qWt7HKTr
	xy2yOlREvhEatpC5ZLwC6oGJ921FLvVA98biQ4TrA2F0iO0FKXVbBGkVr/4peZZfku9kML47bq9Ek
	FCIXNce4bjfDlrvpc9rertQJEbJSy5UR36nyj/NViewjgeIqwq7nrzXxzPInPvM/UNfvd9RAmM3B7
	Pc8+Nm5cm/druXQyDWmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBZnf-00FaCe-34;
	Fri, 08 Dec 2023 12:17:47 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBZnd-00FaAw-1e
	for linux-phy@lists.infradead.org;
	Fri, 08 Dec 2023 12:17:46 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5d719a2004fso16831177b3.3
        for <linux-phy@lists.infradead.org>; Fri, 08 Dec 2023 04:17:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702037862; x=1702642662; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DaQSgVgjNOrxYGF+6uUUzWR0hTH/PyjaW2hJgF8XM1Y=;
        b=s87yHcQSPfoZBz21gFkDNd4mUpabFO5Ku/IXdPDLWUSXJnhIfFjUJzpMBsYX0IR9HP
         K6aDynXsjcoaysTTJi5btvYliK2Pmbjk5K/HDHMxahlTKHOFHYXvy6W2b33Y06alMfxj
         Wveiqw6sJ3TxzwVe5SR0O/EUsW+VQFeuvmq/fzOkLhuAuOLQgS8UykzEEJVpMVZZsnTk
         mAZMa0DLK/SSxiMs68dc0jWalK1A5eiPqNr+6eDhx+3vkKI64NA+DEkVNLd1sF7y6KrW
         Z1gydPAIcQU1vD3S9ExoH6yWeovoJFpbRWiYNFzBFkHN8RO6uXsikw52w3ZOOpni641n
         6Xlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702037862; x=1702642662;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DaQSgVgjNOrxYGF+6uUUzWR0hTH/PyjaW2hJgF8XM1Y=;
        b=krlF5WFZh3c6C8A4sKSzX986rFMd5uIguUTwF7q7TDiSGJyIyu4vuOQatBesjHZBQ0
         ZE9NBzIvJkOmT8+eBrkkzxCR1t2dBm7rWhUdwZTpmU1X5sFIHAt0Q+ieKwSVYnG2MguZ
         h0eEuCbZqNKazZ2zsJGFw58mpe/XLUNdCXhTfbsLFadRzyBPdUFnXXnA8GzjGdt6+u/e
         2/BccybXE6OiZZX9hzidGhTBG3UCm4VjVyAc2AnzMbCXDkPw3LXMnd5z3NibB63Ex/t7
         hQpICmHJC1KwZDbexNXw5FJ+0xIi/t8z5XeO0mUmj12DCcM5S1MuKth+KnocyCUzSBCH
         znHA==
X-Gm-Message-State: AOJu0Yw57Qpe8vzJW6z2MHBUT+nHXvzCQLU1Cp6r7KqVWgnJQ7B6W974
	2i1XTHFw0fFbleV3Nkn3j7FmZozVcVUxiXEiScCD3Q==
X-Google-Smtp-Source: AGHT+IFVLi0PmrbEXzEz9l5oahwRWzv3grTcYR+5T6Ej5uSDfjl+Pasu1aypm54EERJEJMZsKxQ4QGqbaXU2cg1NKsI=
X-Received: by 2002:a81:af02:0:b0:5d7:1940:8dd1 with SMTP id
 n2-20020a81af02000000b005d719408dd1mr3016048ywh.56.1702037862435; Fri, 08 Dec
 2023 04:17:42 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-edp-x1e80100-v3-0-576fc4e9559d@linaro.org>
 <20231122-phy-qualcomm-edp-x1e80100-v3-2-576fc4e9559d@linaro.org>
 <b6d3928c-75ba-47a3-93fc-a60729be2e35@linaro.org> <545d3ace-66e5-4470-b3a4-cbdac5ae473d@linaro.org>
 <ab7223a2-9f3f-4c9c-ab97-31512e7a0123@linaro.org> <CAA8EJpoboN85bLiayXJgn5iwh+Gn0OtK0aZ26ZJu9H3xkTT2Tw@mail.gmail.com>
 <d9d27fa4-6ede-4958-b717-db425be61068@linaro.org>
In-Reply-To: <d9d27fa4-6ede-4958-b717-db425be61068@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 8 Dec 2023 14:17:31 +0200
Message-ID: <CAA8EJpq7dB+45fiq2WmkMmSO7KszY0Et_t1gZ9ZvfsSxftpm8g@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Johan Hovold <johan@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_041745_547882_BC35E212 
X-CRM114-Status: GOOD (  24.33  )
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

On Fri, 8 Dec 2023 at 13:45, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 08/12/2023 12:04, Dmitry Baryshkov wrote:
> > On Fri, 8 Dec 2023 at 09:47, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 07/12/2023 20:16, Konrad Dybcio wrote:
> >>>
> >>>
> >>> On 12/7/23 17:51, Krzysztof Kozlowski wrote:
> >>>
> >>> [...]
> >>>
> >>>>> +allOf:
> >>>>> +  - if:
> >>>>> +      properties:
> >>>>> +        compatible:
> >>>>> +          contains:
> >>>>> +            enum:
> >>>>> +              - qcom,x1e80100-dp-phy
> >>>>> +    then:
> >>>>> +      properties:
> >>>>> +        phy-type:
> >>>>> +          description: DP (default) or eDP type
> >>>>
> >>>> Properties must be defined in top-level "properties:" block. In
> >>>> allOf:if:then you only disallow them for other variants.
> >>>>
> >>>>> +          enum: [ 6, 13 ]
> >>>>> +          default: 6
> >>>>
> >>>> Anyway, I was thinking this should be rather argument to phy-cells.
> >>> I'm not sure I'm for this, because the results would be:
> >>>
> >>> --- device.dts ---
> >>> &dp_controller0 {
> >>>      phys = <&dp_phy0 PHY_EDP>;
> >>> };
> >>>
> >>> &dp_controller1 {
> >>>      phys = <&dp_phy1 PHY_DP>;
> >>> };
> >>> ------------------
> >>>
> >>> as opposed to:
> >>>
> >>> --- device.dts ---
> >>> &dp_phy0 {
> >>>      phy-type <PHY_EDP>;
> >>> };
> >>>
> >>> &dp_phy1 {
> >>>      phy-type = <PHY_DP>;
> >>> };
> >>> ------------------
> >>
> >> Which is exactly what I proposed/wanted to see.
> >>
> >>>
> >>> i.e., we would be saying "this board is connected to this phy
> >>> instead" vs "this phy is of this type on this board".
> >>>
> >>> While none of them really fit the "same hw, different config"
> >>> situation, I'd vote for the latter one being closer to the
> >>> truth
> >>
> >> Then maybe I miss the bigger picture, but commit msg clearly says:
> >> "multiple PHYs that can work in both eDP or DP mode"
> >>
> >> If this is not the case, describe the hardware correctly in the commit
> >> msg, so people will not ask stupid questions...
> >
> > There are multiple PHYs (each of them at its own address space). Each
> > of the PHYs in question can be used either for the DisplayPort output
> > (directly or through the USB-C) or to drive the eDP panel.
> >
> > Same applies to the displayport-controller. It can either drive the DP
> > or eDP output, hardware-wise it is the same.
>
> Therefore what I proposed was correct - the block which uses the phy
> configures its mode. Because this part:
>   "this phy is of this type on this board".
> is not true. The phy is both types.

But hopefully you don't mean using #phy-cells here. There are no
sub-PHYs or anything like that.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
