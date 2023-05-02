Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A93E5C77B73
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 04:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Obe6Cqko2L0Fpi54JsVqKB9BFZIRzYYf7SLeDBJ7Iy4=; b=XG/JPwJqZfXh2n
	e1Rnn0VDRtnlxwHv5kB4QLlswI1zqdIl8EH9v59SNASTnadCdoM45WsEFVkH6QgvkFYc7/laSZwgl
	cZhovzaNV19SV1Ukjm03gjwCuSg3fD2JmYcKRws05CRXJfVzASJcBhbxWhR9zcjqOay0smHOeTDe+
	Sdwpu30/+gJu0TCEaKbqY4D8MBTZlOq9J/FlStiRJARTs4oAJuDcmR1HZO6asVAfnA/jzE9zLVZEd
	CMfvtkAs/2WnGQVfJq5u72Ghide5AoB8YJjSAuKSX0T6jAyQvrT/+25duLIHCf+K4CYE/yXKd8JRz
	ouC/1M6lPUMPZrVoenqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pthrD-0007iF-16;
	Tue, 02 May 2023 04:43:19 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pthrA-0007gq-24
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 04:43:17 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-2fde2879eabso3002213f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 01 May 2023 21:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683002595; x=1685594595;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tA1FfDhaYIxyn0VxdWW674rRwqunc0w4xTIHodrHzwY=;
        b=dvJMlvH0bFWESLjAbcfx4zNKXrf57LuLGi61CzMOE2B60X4jn+bcILY/MVjJ0DlDos
         ItGCbtyYtAZCp//bwwBDivKjkH3AI3k/78g82f2b6srg8pDRf+c1R5vd1Otm/iiGs3EL
         7C7Dh1fIiBE/QI/OU2//ANNGcf1TLx446pY+eMMZoWkbMOGJRtCZpIfk2uQQ8qvb0CM7
         ctxYb0AWA4bOtiw8e6euiqxy0M7ymkdoefi5GijJGrheAl0IyRdJCGcYN8X5cDdSygch
         vKSbpafFDdX6XaoaA1mvb3Whc4KVmKgA7sQ4eBmMmyFVdjuJhQS6uwX2jDOeZosz3Pwr
         ejmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683002595; x=1685594595;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tA1FfDhaYIxyn0VxdWW674rRwqunc0w4xTIHodrHzwY=;
        b=bwYx25qWXA+bWF+sg2Yy4h1SqYKPlBM7jvwoSPYv42B7w4XUOzHyuDrLpfh7SRL9VK
         upPvR9TGF1xzmXXK1Fyy6gu+j63z4fdI5n/kc0FRAtTbmqUvUiYVArJJBZc/weF6Pc2+
         5fDt4JvnYQlQ6sEq5jrYF8OK4dnkCfER3EmkLc1JQzgHsdONM2j3oNtJ5u7qQweXaOti
         bFD87oB+mMgK2r56uptTZUCHAJnNrlJr8xkjgvQsEm2HGFOomI0yPoYN7+fJx5w7Zd7E
         T57e4cL+yAgkD7KTZvotZNxOYW+nxXwNtkuEWL5r/ZdfwTOzzK1o9PlBRkkulqGgdEZY
         bKGQ==
X-Gm-Message-State: AC+VfDxFlIXQbZWjPjr+CHH5RzuFmDoSECnZIPUzyQakg13gkjVQJ4da
	ouv9AFfyEUpZ6AIuXWVndCd0EqTC1B6/uTMPl8MktA==
X-Google-Smtp-Source: ACHHUZ7S82hfGUV9NeXNSbEN4gy+ZPnKp7H1xFs9706sWyoci8/jfrvdCz4olCPDuCiPEnKktFLWwFqWMqYBk5OBqGo=
X-Received: by 2002:adf:df8c:0:b0:306:3489:2615 with SMTP id
 z12-20020adfdf8c000000b0030634892615mr1121956wrl.40.1683002594725; Mon, 01
 May 2023 21:43:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230501192432.1220727-1-bhupesh.sharma@linaro.org>
 <20230501192432.1220727-4-bhupesh.sharma@linaro.org> <82e61752-dc76-9714-d2e1-13962c4217ee@linaro.org>
In-Reply-To: <82e61752-dc76-9714-d2e1-13962c4217ee@linaro.org>
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date: Tue, 2 May 2023 10:13:03 +0530
Message-ID: <CAH=2Ntx4tpJPdh-UHH6urZi4X67sNW8=OYprxi2hi-KX+2w91A@mail.gmail.com>
Subject: Re: [PATCH v9 3/4] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, agross@kernel.org, 
	linux-kernel@vger.kernel.org, andersson@kernel.org, bhupesh.linux@gmail.com, 
	krzysztof.kozlowski@linaro.org, robh+dt@kernel.org, konrad.dybcio@linaro.org, 
	kishon@kernel.org, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_214316_679486_4C818B95 
X-CRM114-Status: GOOD (  19.09  )
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

On Tue, 2 May 2023 at 05:48, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On 01/05/2023 22:24, Bhupesh Sharma wrote:
> > Add USB superspeed qmp phy node to dtsi.
> >
> > Make sure that the various board dts files (which include sm4250.dtsi file)
> > continue to work as intended.
> >
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >   .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
> >   arch/arm64/boot/dts/qcom/sm6115.dtsi          | 29 +++++++++++++++++--
> >   .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
> >   3 files changed, 33 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> > index a1f0622db5a0..75951fd439df 100644
> > --- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> > +++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> > @@ -242,6 +242,9 @@ &usb {
> >   &usb_dwc3 {
> >       maximum-speed = "high-speed";
> >       dr_mode = "peripheral";
> > +
> > +     phys = <&usb_hsphy>;
> > +     phy-names = "usb2-phy";
> >   };
> >
> >   &usb_hsphy {
> > diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > index 631ca327e064..21d00b0295a1 100644
> > --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > @@ -661,6 +661,31 @@ usb_hsphy: phy@1613000 {
> >                       status = "disabled";
> >               };
> >
> > +             usb_qmpphy: phy@1615000 {
> > +                     compatible = "qcom,sm6115-qmp-usb3-phy";
> > +                     reg = <0x0 0x01615000 0x0 0x200>;
>
> I replied with R-B, but then I noticed that the length of the region is
> bad. What is the maximum offset that is used by the driver? I know that
> it is bigger than 0x200.

Sure, let me recheck and fix this in the next version.

Thanks,
Bhupesh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
