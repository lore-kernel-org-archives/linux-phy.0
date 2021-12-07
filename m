Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B960EC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Dec 2021 14:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPpV/29EFk5ceiMuKuLqBvQZZ8Se+OLjwJA991Y65/Q=; b=4ARnoeBnE1v5ni
	6Er2jOQJdhOwz3H1Xf16OyDYz8KGEPDB95AvtcyYBcArh9jeN1tJprZCdwzedaMQitH6SRgrRngkh
	J1MnnW6fqrNMvwdzYeHXoSCeFPkax2Za0TUv41Gi2ed0IKd0N3j7qf7EjhfrmW3CMDTWReRKu2L1V
	yN/cLtgmj+HQSfs98BG+zlg0NaDXo0OfS0u7EnpRa49jAYvDqpuyWRmtdFv1Tc3Yhd+8KLbs370P9
	trervoue7XdsKkYr6qL907EJZayJNPaj1mFwwixS7MMWEB4tIifjOJXvJ9e/xF1BDq76wjcOSC4ht
	7jme/Ccm+mSTMotQLAxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mubtU-00930K-OO; Tue, 07 Dec 2021 14:56:36 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mubOq-008vAc-3p
 for linux-phy@lists.infradead.org; Tue, 07 Dec 2021 14:24:58 +0000
Received: by mail-oi1-x235.google.com with SMTP id t23so28067157oiw.3
 for <linux-phy@lists.infradead.org>; Tue, 07 Dec 2021 06:24:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vfUP7dJBnmi/OcEPVE2ezJwiVV1EUyQRW+Qu6djHyYk=;
 b=cKbadL6aJ141eWrYwPOtTIb0RT1sCruIZCJFoP3Mp+GlRexPjDyuc8ORvvqpOGPI1c
 l0Q/5hwYs4n0G1leCMsw87+GWF6OZpHgo8YIyepUw/4rHrx+431NSShPxQ4XY3okTLa8
 HwSnvvrIrkX0keGoEVQdundcorMDqQ27ophbgoPuODQ2JZlnfAXNkeajGQs8hTBaOEE+
 tfNVXSTRb1khLmksktzI+A1fCA7nAeKuYnBaiDuAC7lDS6fudXxOnBhurhdFC+dbdupb
 HrktztM6Z/tJsuUKo9lz9L63DiAo+6AKFnLGh/Kh9yS9pjnT0scMalVf0onw8bQ6HQ8C
 /3Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vfUP7dJBnmi/OcEPVE2ezJwiVV1EUyQRW+Qu6djHyYk=;
 b=xIWpXayZKQV0B2aixODzm+Lvl1H7wwcIq3Lxy6mNhSq9lhv/sW8fkaC3SWXCngRbzg
 WSDncq0iXtqvgIbKnRc+nTg0IndRRhpMZZWznRVhbFRRLcYONY6EWMeRo4n4JOUZZKaG
 +MKDrVWTQ2lEa0hxUXvz9HFPY+SzfngULG6N+MHv950CdkHWNv2dZVufRRo2atFz7/S4
 aip2wA19oxCoymKSkrGhZAJHweA4aujWuJUVyaS3JEO5Ogn/ffXFN+q6PWQEw3HH6QTQ
 oc49c5rl9b3v1CMxZHEuZXQ6CWUwBJF2SDeWmJPIgM7nkLcZuYDTC8H9by9NTwmoRA8N
 4H5w==
X-Gm-Message-State: AOAM5326B61lciWMnE3rm5ndkaAxa5Mbw1eBnYgliCvLekUQrHLmTyly
 FxtHZ/d8Kw2Fe0z7K7TI6kV9AA==
X-Google-Smtp-Source: ABdhPJydN+P5ZwkGLoLxJVSNSXypXum05RxX0N3o4pvwaY6rUeQx4TwAfDK8+ATcN4/uje330Luq4A==
X-Received: by 2002:a05:6808:150d:: with SMTP id
 u13mr5398185oiw.155.1638887094092; 
 Tue, 07 Dec 2021 06:24:54 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id e26sm2672959oog.46.2021.12.07.06.24.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 06:24:53 -0800 (PST)
Date: Tue, 7 Dec 2021 06:26:18 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Wilczy??ski <kw@linux.com>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 02/10] dt-bindings: phy: qcom, qmp: Add SM8450 PCIe PHY
 bindings
Message-ID: <Ya9vCkillZqKc6o2@ripper>
References: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
 <20211202141726.1796793-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211202141726.1796793-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_062456_222399_EBA02DD9 
X-CRM114-Status: GOOD (  13.46  )
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

On Thu 02 Dec 06:17 PST 2021, Dmitry Baryshkov wrote:

> There are two different PCIe PHYs on SM8450, one having one lane and
> another with two lanes. Add DT bindings for the first one. Support for
> second PCIe host and PHY will be submitted separately.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index c59bbca9a900..d18075cb2b5d 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -50,6 +50,7 @@ properties:
>        - qcom,sm8350-qmp-ufs-phy
>        - qcom,sm8350-qmp-usb3-phy
>        - qcom,sm8350-qmp-usb3-uni-phy
> +      - qcom,sm8450-qmp-gen3x1-pcie-phy
>        - qcom,sm8450-qmp-ufs-phy
>        - qcom,sdx55-qmp-pcie-phy
>        - qcom,sdx55-qmp-usb3-uni-phy
> @@ -333,6 +334,7 @@ allOf:
>                - qcom,sm8250-qmp-gen3x1-pcie-phy
>                - qcom,sm8250-qmp-gen3x2-pcie-phy
>                - qcom,sm8250-qmp-modem-pcie-phy
> +              - qcom,sm8450-qmp-gen3x1-pcie-phy
>      then:
>        properties:
>          clocks:
> -- 
> 2.33.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
