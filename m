Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA3F9C27C7B
	for <linux-phy@archiver.kernel.org>; Thu, 13 Jun 2024 10:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0PC0BZpG9CG1B1SwKfV/kOi8hCishDliR/a3ZzTjoo=; b=f1R9gmJq7Q4Veo
	8BOzF5YaimO3cvCU1/+9CEeDDXaAqYYmru3EfZhmcTNLF6yFD9O5soR4fWd/YZsGg5KnClhO1rk1G
	SYZDMWDLBxZB63MX06yKEenFJQkqpX4etz+1LMsrt3Kr3zmw9x8T68zKn+fIIrlhX/OTM3YjU4UYi
	ybHiN8zYlkny5Q5umFBFZ2NKuhFsH68x5P4nyW7borgNjPq+pUBnmA8r1TfgRfskqYl6fuIinpIiO
	gqEa3dHUedXscjjI6h3OltnqPXdW/hWj3WlTBiUUPLDnRudZyiK7ge88q7PowYtKyCG/WYxG6qyKc
	/xE7OpxBTWd5dpVtseLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHhNF-0000000G5Ll-2ECa;
	Thu, 13 Jun 2024 10:08:05 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHhNC-0000000G5KL-2mGp
	for linux-phy@lists.infradead.org;
	Thu, 13 Jun 2024 10:08:03 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-52bc1261f45so978024e87.0
        for <linux-phy@lists.infradead.org>; Thu, 13 Jun 2024 03:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718273278; x=1718878078; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RYvXhUR4MqvdO8CyI6lyGFQa8ObvUY9+LLJIm6+1jFA=;
        b=XaK8p04PTHOYYazgDMAJ0sE1qdtUuJiHba7f9Zq12YsUzZBDWNrZPr80ACfQmvNEB/
         DmEkcNAfNZpRhowO9naKpJou/SXOfwvt+ii7hsjgCLK8zKa7f+L8JKMluqXsjQtHJRPq
         oRsFlAU3HVC+0LfM/PdY8IB9oWgLbpW7RDbRqSH7UN6bEcTG8A+RxUmygD42mgFdTSut
         GJZV6gsAXil4/zxzge6rTMfOEAwCYrrqBBr9eAdN7gJbga3Jc2sCLKpxBq4zsdbCqBn2
         Fdm54z6c9TUwXTLR9HpIPiCwzyCTJsyYZlN9t1YiYWiC29mutl9/Xrw6EpxqYla/ZaRv
         W7qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718273278; x=1718878078;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RYvXhUR4MqvdO8CyI6lyGFQa8ObvUY9+LLJIm6+1jFA=;
        b=hZII6jwYWNzVlBgfAymC5gb9vrIMVx5AKHrt92678UzzZVzW6NPVWZ7s+Wjm/39Av4
         PzvWgHAZVgiQnQA/rdyhGWfIzHKDCmPiQ4rPX/+MYfn+eDyIoj956Dn3EYZF6h4pRC3r
         s8zfSEzvoXb3X3VBOX6hnyOl4S5vuQaVmHG/6zAeTb8q6b/iBfHN6NwO9ilKEHiCPk3J
         lrGOhx972gRpmL0ZwpiFyDZaqAiN4J1fIBRX5DfnL0rn4z3FlPJuc62owcspQL6Zs8A4
         5AubqygMXSOl07vKauHjyd4fONmF0HOQIzWee5BLTj5TGbNIKU0DYBKPJEJW/WTlxZ+f
         oZIQ==
X-Forwarded-Encrypted: i=1; AJvYcCUiOwC4xz5XSJ+jtckjcVfRtDJ1RNsQyKKdmkT0h0lHctgTvIY50FAk67/mcoecxR+pRzxyai+9cqb/xnTotPX9zdJZrpcrdEQmdPOjkQ==
X-Gm-Message-State: AOJu0YxdkWWdX1SDBAbbdhnyupgbxgOAh6FMf8hWf4FwBFWkhL7C0DCh
	mdQHlfTN/5XXvFYuuSeRfTYPX0QLQv+kec0/3H8jonvIaYAK5LLMtS+xZ26FxwE=
X-Google-Smtp-Source: AGHT+IEIfjbzuR+TJYfn0WkM5bFWWQE5UXg72/ta38D4UK601aQPCRVEmPoKXYW21UYlolSVF5CCJQ==
X-Received: by 2002:a05:6512:3096:b0:52c:893c:6c2c with SMTP id 2adb3069b0e04-52c9a3dfaeemr3306688e87.40.1718273277753;
        Thu, 13 Jun 2024 03:07:57 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca282f2aasm148599e87.85.2024.06.13.03.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 03:07:57 -0700 (PDT)
Date: Thu, 13 Jun 2024 13:07:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH v3 2/4] dt-bindings: display/msm: hdmi: add
 qcom,hdmi-tx-8998
Message-ID: <qf3erx5x7cigdsel6eh4nb4cl7733ag6qxxeblcdjzys6dnrul@nl7mzrm4ljji>
References: <20240606-hdmi-tx-v3-0-9d7feb6d3647@freebox.fr>
 <20240606-hdmi-tx-v3-2-9d7feb6d3647@freebox.fr>
 <Zmnejlkb869mN3eS@matsya>
 <af3f71e5-6864-475d-aa90-74986d516bae@freebox.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <af3f71e5-6864-475d-aa90-74986d516bae@freebox.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_030802_742908_AADCD127 
X-CRM114-Status: GOOD (  14.19  )
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

On Thu, Jun 13, 2024 at 04:02:24AM +0200, Marc Gonzalez wrote:
> On 12/06/2024 19:44, Vinod Koul wrote:
> 
> > On 06-06-24, 18:07, Marc Gonzalez wrote:
> >
> >> HDMI TX block embedded in the APQ8098.
> > 
> > This one too
> 
> I assume this refers to:
> "Why is the patch titled display/msm, this is phy patch and it should be
> tagged as such."
> 
> I always copy what others have done before me:
> 
> $ git log --oneline Documentation/devicetree/bindings/display/msm/hdmi.yaml
> 27339d689d2f9 dt-bindings: display/msm: hdmi: add qcom,hdmi-tx-8998
> 6c04d89a6138a dt-bindings: display/msm: hdmi: mark hdmi-mux-supply as deprecated
> e3c5ce88e8f93 dt-bindings: display/msm: hdmi: mark old GPIO properties as deprecated
> 2f14bc38d88a4 dt-bindings: display/msm: hdmi: split and convert to yaml
> 
> Are you saying we should diverge from the previous nomenclature?

This one is fine. For the phy bindings please use phy: prefix.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
