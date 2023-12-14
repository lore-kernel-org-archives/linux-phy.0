Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E171C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 07:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LCpusE9m5WfMZx2DwgeRWJIqgt/FZKmk1t9KtzBOAQY=; b=VicgvwzIBfRtAA
	nNILqG+zG8JfKD3+qQ5AkZMZElK4nQ25wUNtzlPnqwGaqCFOTIvkalTebubxMvKwHWnaKZuisoQ2+
	ppzvmanfpKE0OrP8/STLgFHgWydcVm3MQc+t+/2OwP0CCSygjvZCDMp5CikKe+9OX2zKWAu6U4Y/+
	5N44hJ209D6+jQ1Oz6obZhNHiR4UX4y109bN8Xrxki6uj7TbV0ztB4smL+yO4hwcHuqDDfqRi769Z
	CtMqPdkOUc7Q7wvwb9buxaPtHdFG+gILao0Mt6zzY7Rz7D8KUVa71ULxxVozcJabfuO8LhA66S8SG
	lQFXJsUJYolIjbiUS4Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDg2x-00H506-3C;
	Thu, 14 Dec 2023 07:22:15 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDg2u-00H4z6-2L
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 07:22:14 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-db3a09e96daso7978138276.3
        for <linux-phy@lists.infradead.org>; Wed, 13 Dec 2023 23:22:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702538526; x=1703143326; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dFId4vI/rtSZSgTfU2r7XTw+wmzc0CVyAnfLkGgxiTM=;
        b=RCSJPGwjtAr9gyXEQ9P3uG8ISpsBJKT2FiZNljBdWhKR+syqCDOR1SycrziNQTYULO
         LTqiskL4ODfFjFwITa7jAsyUDky6CN89yKT38nwLc181WtMrVkxXOJv1N2UIJlYWalHk
         xlht2lmjtTGTANgZZ8+I6mTsZ/AYUwGlHHi2uCumFAWG51nu1XApayH/MxdUdzxKc9Wa
         lMcqiozUDi0MpnwGBfmfjNzZ+OSiZaZ4BiacSct0P5Ivs5dICgwrb3cbPzhNuBKT/jF8
         lkvIJOqVN5wlw4mo9KSr5tm6yEsuM5I0s4RU0RRmYilGX1ue89TAyX9EJZNJnH9JYOcd
         cRoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702538526; x=1703143326;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dFId4vI/rtSZSgTfU2r7XTw+wmzc0CVyAnfLkGgxiTM=;
        b=KnzoFt/7TYwJv4iA8xB2lvyYbj63LyaQPu2XkqH7W0xx2suKzVxynLefc5Vp+I0KJO
         iixyrHQhEnmO8/na/CjSUzc+s8hhBzkLnIJMSdl4JPFQ3rFQgFVAULZFrCa0uA/MMphb
         0IGrliWqAxJe6AmtKzWK1c4reGOXP7vXuado+8Oi2iU1FFez3r8auK4Xo2lIzcOaKGu/
         56kKwdn6RTw/jY13PbRudrjxehKwSxpsBROcnTyzfRwfXW0D5UdHqKLJa+cnBOEO7ytf
         jpLHA2Lb0MwNRzOt0lN9DCeKuZztFuesJEstvFlfGryVBoFNCAeVMKFBTipamY1EtkN5
         Fj0Q==
X-Gm-Message-State: AOJu0Yy5YSIMViZW2jbhP81nhePFVrl7pTUNdvVGyMfHv24X+Hb+04yr
	vBpEdDm6aZmROK2u7WQSo7Kh+X49rxXwYQT/Q2eHyg==
X-Google-Smtp-Source: AGHT+IEIP8q9qBU3y2LHml94mJ5w75uay/PW56FAWRJuUt9I+fEJqyg3WA41JHlZil2H3kXxccuRg6o0HP4Vq3kWWb8=
X-Received: by 2002:a25:9d06:0:b0:dbc:6715:42b4 with SMTP id
 i6-20020a259d06000000b00dbc671542b4mr6327865ybp.73.1702538526017; Wed, 13 Dec
 2023 23:22:06 -0800 (PST)
MIME-Version: 1.0
References: <20231214062847.2215542-1-quic_ipkumar@quicinc.com> <20231214062847.2215542-4-quic_ipkumar@quicinc.com>
In-Reply-To: <20231214062847.2215542-4-quic_ipkumar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 14 Dec 2023 09:21:55 +0200
Message-ID: <CAA8EJpqJ_7CPjTs2zykqnZpm9bQ31G7Q+1CA308OdS1BNqK6GA@mail.gmail.com>
Subject: Re: [PATCH 03/10] arm64: dts: qcom: ipq5332: Add separate entry for
 USB pipe clock
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, bhelgaas@google.com, 
	lpieralisi@kernel.org, kw@linux.com, vkoul@kernel.org, kishon@kernel.org, 
	mani@kernel.org, quic_nsekar@quicinc.com, quic_srichara@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, 
	quic_varada@quicinc.com, quic_devipriy@quicinc.com, quic_kathirav@quicinc.com, 
	quic_anusha@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_232212_769536_A993905C 
X-CRM114-Status: GOOD (  12.01  )
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

On Thu, 14 Dec 2023 at 08:29, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>
> Add separate entry in clock-controller for USB pipe clock.

In my opinion, there is no need to do that separately. Please squash
into patch 9.

>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index 42e2e48b2bc3..f0d92effb783 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -213,6 +213,7 @@ gcc: clock-controller@1800000 {
>                                  <&sleep_clk>,
>                                  <0>,
>                                  <0>,
> +                                <0>,
>                                  <0>;
>                 };
>
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
