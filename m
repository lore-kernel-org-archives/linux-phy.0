Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2633C0218C
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jan 2025 17:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IxCWBL5qvqex1xq/Np404MpNWxM5udOPMA2QpJf7GSU=; b=FTZtkZfFY8xNEB
	3x4hEp7VgoKhxVMQxIfSGJSrOuWQDEC/ExakC3RuzEreZSlFs51O9GlhAG2DiizjgJJoxr6e0WSEE
	S5JGbFjEmL6Rf8Wfb8XaMM3aIXeD/JOpcOM2idFxhUc8aiA6pJziqeBdlswON4qS7lBmOvR0sqKFQ
	uobnDchESS3bemUxmuyLv1xjEXwW8wfMQ4Zs1XJMvUsrFNRd8oOSrVuva5My/1Xi9zJ7lbR9XsnAn
	hLA0XzmLSa/VfrtWkJ2JF1zD33lYc7pmrqJ2/FN++J35m63aWG7nVZMm9BQZcT9m1TJDwHj1OeFpQ
	TUwIKN1guoze5PXqh3Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbk19-0000000GeIR-1VjS;
	Sat, 25 Jan 2025 17:32:23 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbk17-0000000GeI3-2ZHs
	for linux-phy@lists.infradead.org;
	Sat, 25 Jan 2025 17:32:22 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-5439a6179a7so3293926e87.1
        for <linux-phy@lists.infradead.org>; Sat, 25 Jan 2025 09:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737826340; x=1738431140; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9VTKxkEAePwEPt+V7eEDuXn6aqMYuyS335t11P98dTo=;
        b=G9mdKIY6roUekJto1XoIuJonTK2SLDFjKK+7Ye14yniJB2wuLm4a0oCagf2aE3CMZn
         iR6FAHKXFDpkmykyx968IzHQkOL2yoqIAXnyBk6dw+5MsD2puXGC/6/AbYfYsGVkeut1
         Y5zqkuc7Koxr6TIQbyxF4SmZlUcg3oRVYBjGuJh24RRHYQcOO5c4/4d5TgtFey/qmzpw
         kmnOkG7v4kPXrgyD3uklXi3eJAKCIx1IjcaCkDFNW4pb2SGIvFOUSHO3oFcssrjbtVmu
         MKtCg2W2YXJXw2w10CBV9x2vVrbmu2IIADwgbxjIKXt+vgW7UI9oRMKWEjugZCrffQAh
         aIVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737826340; x=1738431140;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9VTKxkEAePwEPt+V7eEDuXn6aqMYuyS335t11P98dTo=;
        b=RRetIrt8PvgyKtQM7etPvdGmqFCOvwcHG7OyqyIlALdLMtq45PocS/n9dfCsOvuWjp
         OKjF/vTTv/6j+5QtbUtEDNzPzuHMxHKHYTQcNw5GtY3XdNYumd1rnIBYo1JsNvITUZtE
         6DH6VeQXr1gVlw6TSasB+Fr1zU9lX07NNGSmnVv/fFfCYXuB4opLsx4chjJuOAoq7ndR
         1A99PmGXVsM61MDgOmDoAPIAw/plWmiMEaOg2w3qU3ZrQZtpfYr2oh8LeVZtSTrNC0eK
         dI/A6+bMlf1zUhnWZYLdEScx6a2DS2QZUGgYzSFls0eCkIVHglCrvvMRkydYEFY29XmV
         MNaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzgzW/oNeu41GahOVQbz3h+l2lQpAvM8S3fhLv5eJ43BLX58faLA7KmTNuqgwn7ymzitRa0aIuRqo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzS69/NikcHLVrTcgR1yMrLhJ1bQH1vwT1RSYupc4eKObF8Ho2g
	kyrFe+qAjOCzqHxGXN1TDvLuCYxQnBM4UCoXVwPtJauux/yAyiYFnU3IIXRmhmQ=
X-Gm-Gg: ASbGncs8X37JsvT1kNkUy1xaTeg7qtupso+SkIy9Aeg6VeLVIHVs5zjKADdGF2ojApx
	0fH08x6Vgvm2nXclMXRR+PdrlnS308sQKalL/XAKunTe/fwOTTJ2EQ8fS7Ejb31uWwObom0NwLl
	D1MnqAzeWyDK0F0fODIkVF/5G3bQAmE+1+YgVsI25mpOTtr0+HdaTs0g+ShgfGDw8FipDl8sig4
	8SoUiMu9YLKEn6OHxzAIQql43oZNvJoLeFPIyrTLuufo61tOjA0u4aCJzuS2lyJYmIuYMDg1RHS
	hGVF52Iar6iQbLNXQGLPqHU1RZCdegov6gEjJUbxUbimr6UJbU5fEZBtAM8y
X-Google-Smtp-Source: AGHT+IHM/qxpChUH+UJCNurb4Af2EPjax/Hj650FqV7s35DU657fh9sG+7Ox+WQZxY3Bclz1CNSomQ==
X-Received: by 2002:a05:6512:3f0e:b0:542:1bdb:9a61 with SMTP id 2adb3069b0e04-543c222feb5mr4471511e87.19.1737826339672;
        Sat, 25 Jan 2025 09:32:19 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c83682ffsm666153e87.115.2025.01.25.09.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jan 2025 09:32:18 -0800 (PST)
Date: Sat, 25 Jan 2025 19:32:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 4/6] arm64: dts: qcom: x1e80100: Wire up PCIe PHY NOCSR
 resets
Message-ID: <s3d4tc3rstno6rtzlmpab6jho4dixjljo3u4b64r7luaszqlmp@3djmby5d3gij>
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
 <20250125-topic-x1p4_dts-v1-4-02659a08b044@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250125-topic-x1p4_dts-v1-4-02659a08b044@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250125_093221_655577_80B69CF0 
X-CRM114-Status: GOOD (  12.25  )
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

On Sat, Jan 25, 2025 at 04:31:20AM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Asserting the NOCSR reset line keeps the PHY registers in tact.
> This allows us to avoid programming long tables of magic values in the
> operating system.
> 
> Wire up these resets to PCIe PHY4 and 5 (it's there on the others).
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
