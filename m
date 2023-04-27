Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CAA5C77B73
	for <linux-phy@archiver.kernel.org>; Thu, 27 Apr 2023 14:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtMcKjjRiYYJxDb0gz/uppsh3iztzLEyLKiHPB5eNmg=; b=QbVRX3QH2dmpMp
	55qevuTh3hxA9gddKJjijUywy7G8wDhkRy7cKqlxJVMi4F7mQxx8+7glNf/wkntRB4956KjS/cwA8
	AfXOdy4qJKkNany3qVZ9bisWXtDRXZoEbKj8TpuS7j3tVE4BWBs3S4Jfr0obJJc4l/qxErNsSetW5
	J15w0ehwf3a938wtdOSvD1wHwrB4mwixxTNxeGJVvnx6TdA8FP5HZrKJdhpxnQt4uK/G7FcJzt2RF
	/UR8vVE75ir2OkXwwC09kApcm90OsQGPQpzIVmL1Oa1HYwhCo0JwLr+08mVp7oC+S1BvQdaVrzKvC
	pS/DKu0SMViZoXEqKu/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps2Vv-006kQ1-0g;
	Thu, 27 Apr 2023 14:22:27 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps2Vs-006kP2-25
	for linux-phy@lists.infradead.org;
	Thu, 27 Apr 2023 14:22:25 +0000
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6a5febde157so3116054a34.3
        for <linux-phy@lists.infradead.org>; Thu, 27 Apr 2023 07:22:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682605342; x=1685197342;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4gLDwWMtMBMb7y/jrCbWtT0/Hn7uUjkpKAJY/4sZ7Bs=;
        b=SiEHpv7k/ZwbuVkB0u9Lg4/RHglgCqjOlwmz44uK0xv53CznbcxAdiR2pg2DkwjTpT
         de6WPRL1uymkE9lRMXAH0i+hkV6Fw83F5t/MnAlQW8qGvdFbRK5ajrM25/2W0UCtWFMy
         03oF6yuTREzWL62MXVojQmXEQB4wv8eg+THS9qo4ciNnl3Q5jnyvoYXC8j31IlyDm82p
         74VqMOMjeDjyOexIqBmFmc55n8HW2znoLjhYois8Yv40ItTCICcxzoItcDleUpa0HgXc
         T502yYu6d20x5XwKUjmrNm5bADiVSsy8bNCtkXpb79mpxVy+BU4X8BhA6fibX/AgXvOY
         n5gQ==
X-Gm-Message-State: AC+VfDzhxym/SEjsA3wHOLxYWXn74LLFHvkI0QcxXHE1MDz5v8uvK4CM
	MYuVD6smgFHWdOxR1ePYRytccCm4xQ==
X-Google-Smtp-Source: ACHHUZ4BWEVnqnsdAsGY7E1vQ9qbP2prNMAfDqV6P5Yn5brYFtyS3A8u18GVW90OuUhA4zsAyR4Z+A==
X-Received: by 2002:a05:6830:1614:b0:6a6:2d87:e2ec with SMTP id g20-20020a056830161400b006a62d87e2ecmr888782otr.14.1682605342417;
        Thu, 27 Apr 2023 07:22:22 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id f12-20020a9d6c0c000000b006a44338c8efsm6790490otq.44.2023.04.27.07.22.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Apr 2023 07:22:22 -0700 (PDT)
Received: (nullmailer pid 2990071 invoked by uid 1000);
	Thu, 27 Apr 2023 14:22:21 -0000
Date: Thu, 27 Apr 2023 09:22:21 -0500
From: Rob Herring <robh@kernel.org>
To: Shazad Hussain <quic_shazhuss@quicinc.com>
Cc: Wesley Cheng <quic_wcheng@quicinc.com>, Kishon Vijay Abraham I <kishon@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, andersson@kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, agross@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v1 2/6] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 bindings for SA8775P
Message-ID: <168260534009.2990013.16903959800829842763.robh@kernel.org>
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
 <20230421133922.8520-3-quic_shazhuss@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230421133922.8520-3-quic_shazhuss@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_072224_683042_EDDE72A5 
X-CRM114-Status: UNSURE (   7.74  )
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


On Fri, 21 Apr 2023 19:09:17 +0530, Shazad Hussain wrote:
> Document the compatible string for USB phy found in Qualcomm SA8775P SoC
> 
> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
