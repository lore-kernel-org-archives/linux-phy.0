Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9E36EB8FA5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 05:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6mgvD+SUCExPy1On2Kx6wveH716GIZkrDnL+5Hc0DQ=; b=CkZwiMNMgTqf7b
	/LXWjW5tugXiRA8wlWB15ILnhGeG4SwnHwKh85nEMQMqlvNVa+sYg1Ot1OC32E2Xtj8m7NgEt0unP
	dw/oQc4pO+qI4tCUy5237IUYHxx+BINp3wGLPkzPXW3Y3+767sJ/s16Wkj3cxL1yx5rau6CcQdMI/
	YM6uBZ/ZUV9AybFJ/L18BPufWamLrhBEdNCvyWR8PbuwnVmoc65ljftmsoniBl5E13NEn0du803AA
	ski5AbR5Pza3PEZpmjbRY0G0aYbRVPS9E2xbsIwnp1kG0k21bJURl2mL3ExpvQNBLjm9PEQINFU4K
	wDXEJyYnSsMggjFSIE7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdlGm-007J2k-1F;
	Wed, 06 Sep 2023 05:40:04 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdlGg-007J24-2Y
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 05:40:03 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-d78328bc2abso2874786276.2
        for <linux-phy@lists.infradead.org>; Tue, 05 Sep 2023 22:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693978797; x=1694583597; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8f/NqI9eJZNZS9Jew7TyzheIQT5LOh0WtCkl6hQ35v0=;
        b=Mbpo2VN/lop/jMawwdJiBsnXH/E5KSVK0nRvWfCvugG7F5iTVquGUmfutwAsnl+c1K
         La30s2uTx0imsN//v+Llg4hgzpvZttMpefJmVYfarHRqmmHrX+Zg6Hv+zFMMuhj/1xRf
         zCMDc9JeaR8xuB9oZBI3hQ7PGtitvcrFF2M8jIyS1qlzcPJtcF4Fa9qWbxecptrCTWtn
         lIzAJhRloZ9p7F5LHNCDoZGa71qzAjfI9xMDBGSs8ccBKfgbQF/E+Y9YULi0Sb9dnPgI
         C0f+aK7dHYQELuRSjNrKFdraY06j+qz3RlKRAPt0ZgDURQ3lp0i+oK5zSGWn88TVLWpH
         NU6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693978797; x=1694583597;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8f/NqI9eJZNZS9Jew7TyzheIQT5LOh0WtCkl6hQ35v0=;
        b=StmqGSUpAqpElp1WPD+I1B3OJ/qp5Bnl4kFR3PgygXvYTrQVxWZ+2zexDmNh3bmujS
         zAHggYXYhXy5XWljJ6fdBMupEmfTx9KAu23kwx7vb6f+nZthckcpNd8EiwLBCUTFKdJp
         yXEDasJW5cGqGsgLV5pYFFJqqhBWg2KLV+wOBRCvMA4c2GcjrTvb5ij8FzPKbOopM9Pr
         3cwgNSapavEbkF+lhjulAAO0yyS969eMqHwSXrFcbW1w1+FS1ZcgM1lr6dVE/jFCo/Sf
         JLoRNxef3P31Epy0xKY8oy028c5dJNMETtVLibLgKJ4aogwZOKJMXJXyHCVjgm+QXv2x
         IKGA==
X-Gm-Message-State: AOJu0Yw+PXKt42K8YoeM74BlG5ZaZsx04a8P3E1IK31CawLhtwVEtz5Y
	iCCy1x28UsuuD/M9JSZXVAKEufGzxgWjMlmERjIKhA==
X-Google-Smtp-Source: AGHT+IGFfsNqsW45LvllXv0f9d4ie2TdybHTJ9lNAUNOCKumpQv/0qoQbjpjhFYWqp/OLi6ld3eDH++TbixLXN4BKVI=
X-Received: by 2002:a25:d91:0:b0:d78:26a0:ab8b with SMTP id
 139-20020a250d91000000b00d7826a0ab8bmr17030568ybn.55.1693978797353; Tue, 05
 Sep 2023 22:39:57 -0700 (PDT)
MIME-Version: 1.0
References: <1693909838-6682-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693909838-6682-3-git-send-email-quic_rohiagar@quicinc.com>
 <37fe0c7e-60ad-4c27-b40f-471cc3d92e1c@linaro.org> <ea9df6f3-dfde-ea7a-af22-2a0839d82d32@quicinc.com>
 <1838845b-9586-6f8c-a4d6-ef052e0a12db@quicinc.com>
In-Reply-To: <1838845b-9586-6f8c-a4d6-ef052e0a12db@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 6 Sep 2023 08:39:45 +0300
Message-ID: <CAA8EJpqK1FzD2+c6TsicP-fjP+vKJGNWKZ2UodphkROb0WkX1A@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: phy: qcom,qmp-usb: Add SDX75 USB3 PHY
To: Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, abel.vesa@linaro.org, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, kernel@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_223958_858531_793DB57C 
X-CRM114-Status: GOOD (  20.34  )
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

On Wed, 6 Sept 2023 at 08:26, Rohit Agarwal <quic_rohiagar@quicinc.com> wrote:
>
>
> On 9/6/2023 10:52 AM, Rohit Agarwal wrote:
> >
> > On 9/6/2023 2:04 AM, Dmitry Baryshkov wrote:
> >> On 05/09/2023 13:30, Rohit Agarwal wrote:
> >>> Add dt-bindings for USB3 PHY found on Qualcomm SDX75.
> >>>
> >>> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> >>> ---
> >>>   .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 40
> >>> ++++++++++++++++++++--
> >>>   1 file changed, 37 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git
> >>> a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> >>> b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> >>>
> >>> index f99fbbc..5725620 100644
> >>> ---
> >>> a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> >>> +++
> >>> b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> >>> @@ -20,6 +20,7 @@ properties:
> >>>         - qcom,qcm2290-qmp-usb3-phy
> >>>         - qcom,sa8775p-qmp-usb3-uni-phy
> >>>         - qcom,sc8280xp-qmp-usb3-uni-phy
> >>> +      - qcom,sdx75-qmp-usb3-uni-phy
> >>
> >> I think the ident is wrong here.
> >
> > Same. Somehow, your reply has the issue but original not able to see.
> >
> >>
> >>>         - qcom,sm6115-qmp-usb3-phy
> >>>       reg:
> >>> @@ -38,9 +39,7 @@ properties:
> >>>       maxItems: 2
> >>>       reset-names:
> >>> -    items:
> >>> -      - const: phy
> >>> -      - const: phy_phy
> >>> +    maxItems: 2
> >>>       vdda-phy-supply: true
> >>>   @@ -75,6 +74,7 @@ allOf:
> >>>             contains:
> >>>               enum:
> >>>                 - qcom,ipq9574-qmp-usb3-phy
> >>> +              - qcom,sdx75-qmp-usb3-uni-phy
> >>>       then:
> >>>         properties:
> >>>           clock-names:
> >>> @@ -122,6 +122,40 @@ allOf:
> >>>         required:
> >>>           - power-domains
> >>>   +  - if:
> >>> +      properties:
> >>> +        compatible:
> >>> +          contains:
> >>> +            enum:
> >>> +              - qcom,ipq9574-qmp-usb3-phy
> >>> +              - qcom,qcm2290-qmp-usb3-phy
> >>> +              - qcom,sa8775p-qmp-usb3-uni-phy
> >>> +              - qcom,sc8280xp-qmp-usb3-uni-phy
> >>> +              - qcom,sm6115-qmp-usb3-phy
> >>> +    then:
> >>> +      properties:
> >>> +        resets:
> >>> +          maxItems: 2
> >>> +        reset-names:
> >>> +          items:
> >>> +            - const: phy
> >>> +            - const: phy_phy
> >>> +
> >>> +  - if:
> >>> +      properties:
> >>> +        compatible:
> >>> +          contains:
> >>> +            enum:
> >>> +              - qcom,sdx75-qmp-usb3-uni-phy
> >>> +    then:
> >>> +      properties:
> >>> +        resets:
> >>> +          maxItems: 2
> >>> +        reset-names:
> >>> +          items:
> >>> +            - const: phy
> >>> +            - const: common
> >>
> >> Could you please point us to the actual DTS patch adding this PHY?
> >> I'd say, it is highly likely that you are trying to bring in the
> >> unnecessary change.
> > I have not posted the dt patches yet. But sdx75 uses these resets.
> > GCC_USB3PHY_PHY_BCR, GCC_USB3_PHY_BCR
> >
> > These are same as sdx65 and sdx55.
> Ok I see in your patch
> https://lore.kernel.org/linux-phy/20230824211952.1397699-17-dmitry.baryshkov@linaro.org/
> you are updating the resets name. Fine, this change becomes unnecessary.
> Will rebase my change on your patches.

Well, even without my changes, GCC_USB3PHY_PHY_BCR is "phy_phy", just
judging by the name.

>
> Thanks,
> Rohit.
> >
> > Thanks,
> > Rohit.
> >
> >>
> >>> +
> >>>   additionalProperties: false
> >>>     examples:
> >>



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
