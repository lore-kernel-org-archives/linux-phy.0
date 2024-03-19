Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE67CC54E60
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 09:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4kNpaAtrVgueP3hVNfZcOhmwDktMu3U1HoA5J0jME6k=; b=PIcnQrMKRZ0BY+
	hihEXw2FEOP7YK8TFkJ5iSVHRs8lS11LWs27eAmCkvExj+qjUUCvTql5m1XvGiizVS2Kc1FEIA/WG
	E5NlsPb4swvvwnFS2YtzsYcIbmft3Wy84qkEINJfBkL9hzcid07GtP2A7WLye/AbfzrrFGhN+xbUu
	h6wK391A1TcQ+OO5cppQ8/rmAlFh7iqq1onMvrD9T+Su49NNBWIKG/tqJUXeyiCOpitMvJgMb230M
	CEvOD5/9q4aXqY9sbURYi6xnD9uv31KkkmvT1tKTOudjjxey97exvEYbLHyRutc+mtwqw8lyVBg/z
	uBfTUhndi8VLun8EcfVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmVtm-0000000C7fj-1iB8;
	Tue, 19 Mar 2024 09:36:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmVtj-0000000C7dZ-3hkV
	for linux-phy@bombadil.infradead.org;
	Tue, 19 Mar 2024 09:36:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=q0tE4rTRpsmTL16kdGX+KFzRwJVG6ZUmpKExRxozggI=; b=Uo8Cs0DkPZhAkRjeDZ7Okoq63E
	ItthtS7aBM3MPopPF8fVflKS2dzCn8mzmeESHV5Z/YfDIRSqDcsJiWCMN+yqdCkouNQol7IRCoXEm
	D6VJfvMQk+7f3mqYQhoL1btB14FBANStTHNF+fb4sZOC7rJjot7B5Gx4LWOA8SP/iH9G7+PFenprF
	kxDF4oXoPATGqBakWnAsltA4FDppeO+cneCg4g3Iy9qdP+cnrWokIA+L+30aYs0VRSwk89lB0b7Sc
	g2XY+SuSw4+Tk4+37p8ZO9nbtJuwhcD+TWv/7rz4MF+XS3RfnvTOJ0dP6USkiOCKjjH9VPklnYUpy
	kwRZvXow==;
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmVtg-0000000D8s8-1LoH
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 09:36:42 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-60a0a1bd04eso55599067b3.1
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 02:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710840997; x=1711445797; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=q0tE4rTRpsmTL16kdGX+KFzRwJVG6ZUmpKExRxozggI=;
        b=y4Zy7w/32biRHZr7h97e9PsYKPl3PwMuNjnpMRK7hJ9B3CIuHxHMDFqaTO/ZSpkOCd
         c9O9m7qAa2wY8X1fAsMxT3TTTKTeEj9rEk5QNxfGwjcndGLiB1rsrdet7sN/USDcPqk+
         ZssGGeQ8zCptIIFzliiLy2cyTC5Zdq3VmnHR15jlbCmGAEWKadxytuBKyXMKMuF1NIXe
         C/jE3I/erbfYphefJnJxvhWUB8FRxLJMgsVxI47lCUQ6rnAee0pO9f32na27aSMPXIxn
         K/wU7g4KqS4hLMdOJRDkSb5mD++nR7nW3Io53RhJdCQ7Y8JHJ869wsMEfFY87DZJphNZ
         J72A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710840997; x=1711445797;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q0tE4rTRpsmTL16kdGX+KFzRwJVG6ZUmpKExRxozggI=;
        b=r9ljXXVclQwuKCiZumzwPLCV8i5ujLGOjnUCbYxl20u46Jp3ZHsnKMMesbmwySQOEn
         W5feO6lZmqCbK95JryIsfFJVYVvXwfnoDorwoubdeweboZOVS3lylpdYSEcuK5Plb8JH
         rPOt3kzJQIOnnsDfr44NCm/OgxXXR6imkWCTyoVCuPg9bY4bacJ9Wi7gxGJsSyTIsS00
         11m0rLte0NQIaUkiHHZrzKXqU4RFZXQgDsYT54ZyNb9iOwgEhgOiURvdAj+AaSf/dXgg
         nku8qsBEG7ZfW4ruppCvHJADUXQ2DJkdW/vBSiIROIwE1ZMh2hFCmXRi7xqeTywW07E3
         yNOw==
X-Forwarded-Encrypted: i=1; AJvYcCUGd46HR3Wj5RuloldGYHy4SjC98+7CEp2JooQBkX/+wdzf7L5h7Q3kwYlZHiFKWBAUhbR2br7p4gCbnwQvcRSw4KwmYs08+DTryIbx5A==
X-Gm-Message-State: AOJu0Ywu3n4/KVxowbTm4OFhcFY8PxRn1WVZ4/YHCteGa8bGILqQM5Tw
	aU9Ha8wLPbknXmYTWeOmPY0kU+3UFUXtmCR01sDwgoIATullW/NH61Elr0gZIAE8HA8V2hcIgwo
	yfvKyGln1P43JahJg3ElPdzKh8Fyk/1xBdkNSfQ==
X-Google-Smtp-Source: AGHT+IFuWQSJLHTIN+PSrx6VRbyj8bCDJjySSc07ahzVtGH46dRpslwe/Jo5mgbf3sHZSjSGNrfPeFwn5DSGSqdzqaY=
X-Received: by 2002:a0d:ef07:0:b0:610:968f:c8d2 with SMTP id
 y7-20020a0def07000000b00610968fc8d2mr8021450ywe.39.1710840997353; Tue, 19 Mar
 2024 02:36:37 -0700 (PDT)
MIME-Version: 1.0
References: <20240319090729.14674-1-quic_kbajaj@quicinc.com> <20240319090729.14674-5-quic_kbajaj@quicinc.com>
In-Reply-To: <20240319090729.14674-5-quic_kbajaj@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Mar 2024 11:36:26 +0200
Message-ID: <CAA8EJpqgFcBetRRFPQbG1WKHpxqO3tVQ-Yn0k7a+GVx=WN9AWQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] phy: qcpm-qmp-usb: Add support for QDU1000/QRU1000
To: Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, Amrit Anand <quic_amrianan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_093640_532257_9042E7DC 
X-CRM114-Status: UNSURE (   8.98  )
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

On Tue, 19 Mar 2024 at 11:09, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:
>
> Add QDU1000/QRU1000 specific register layout and table configs.
>
> Co-developed-by: Amrit Anand <quic_amrianan@quicinc.com>
> Signed-off-by: Amrit Anand <quic_amrianan@quicinc.com>
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 49 +++++++++++++++++++++++++
>  1 file changed, 49 insertions(+)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
