Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DF5ACCF9E5
	for <linux-phy@archiver.kernel.org>; Sun, 26 Oct 2025 18:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpjZW77+A/uRohtkrjiGG/RQuCgCUaLYS4EOOHgyDnU=; b=UdlSF0U7wJJBzK
	mbqE3IJy9/Cu+3iYycS2l0i3VHpO4rudIOsQDlxteJ3ZLWQoJ/VITgX4zqTU5CX3qWp8QA7dmKaDC
	bdZj7jMFr91EXQA/X+zOxQtE2Qfde49+rkEKzqtfzz64kd62Obkvc1IhcltgK6dKrhLj3xDrMmY+3
	M3vi92++hEy9JLP20ZYn2kUtcjWRq9AKiuo+VfYzQfc/HTykExOVubhd+PUY23Xu1P9wJKI0JVa8q
	347erCi2DDOJO+BVy0nHsl7PP1GXGdYkEVS3pAY+mwJtlBY2sGW9s89Df50qmlN6EzT7CeCUQVcHi
	bcq6V7U2Q7KUMJJpthrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD5wl-0000000CegI-40Df;
	Sun, 26 Oct 2025 18:58:31 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD5wi-0000000Cefv-3Jqg
	for linux-phy@lists.infradead.org;
	Sun, 26 Oct 2025 18:58:30 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-4283be7df63so1788851f8f.1
        for <linux-phy@lists.infradead.org>; Sun, 26 Oct 2025 11:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761505106; x=1762109906; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9ENsjTeOjLdxslr5mcl6vGKPut02RZ9cd/wR6kYX058=;
        b=UU6GCLax/gZvRQygUVfubXBVKGHxXpCZZ8Tf8KBAWzWdrYahnuE9jQ5xsz0437reZO
         sOaAytQJXCZXlIzmvUQwbIabkuk97pTASb7lRIsaBL+uA1j1oMyKTaZSNmcapbz6kfxi
         HE8eSvJXwAejbVUIMIAtZ6rcRoqKmZWqZGi1fgxnM8q7kaURGTs02dp7NXQrRBJG4tKW
         SiqASzph81Cz0kGj3FkjJAIyP40nLhUihmxb6dMfRpXx4LYXNSgYuQC9/r4A7lEXQZ4Q
         MutvU1AL15smHZYT9n/4DObOn4qpZlaGmPlvMtZyoUuy2+9rX2S3c5SkG85kPsV+zU9R
         Vjfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761505106; x=1762109906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ENsjTeOjLdxslr5mcl6vGKPut02RZ9cd/wR6kYX058=;
        b=oOFq57jMec/WX2N+h0ZwFuIVncQRDm+Vz4rMvte8WGSyZ4yhD1aWp2MynbXcR3OEhA
         1oAjv5rN+QnBmXqtdCPbj/3RLmyf64jOSrKewXY1zpgXLScQZ+Gdtbc8GwpisyNpB9Hy
         GMmv7wlvpBE+VWcSNuZGRofStAaRHi97io/XDzIPXYWIfrRNjv+RN3fP2m+eSaKEHxLE
         pDg6iLSsBv0+WXbaSBgjmIB6iL3nuZhmolOGzDav3OoPeAcup13DKizmRfUQH+fUbeCX
         JDNS4pgaEJ2CAT1zysv+DJuwYrvSAcxISsRBtsohe4FoqPcGY+MQ+OCbmtYhXtoXeyZz
         6HEA==
X-Forwarded-Encrypted: i=1; AJvYcCUBZMf47bo3RCv9N8QBhJFi2ur/nV6wxEsrlc2jSE/9r0gHRUNEKZLJkKN4FDDK+SpBmZSKtCfVzpo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyy3Hl2Pee435HXr+gUbYXSOitQvFHhzYAipkBD1dk/1dD+rbyh
	3aQK8xzr1aBNTeFdvZQI3BMdj5JbWAqWGSg7QwdV06kyob+qTevdznLxkCbqZoeO5pc=
X-Gm-Gg: ASbGncts3p4lEHWRORRkWvy8WEM5qcIQq7VvC/lA+0dXRUhfWZT7Do6tej1uxAalbJV
	6Tu8IXpaZAQ+j78HSQMmD2Vx9agFjJTa1ocaCdhQbAJJeWsLoCiYgcn2Uw7ogznieY27iS0+PaI
	i50GnvDPe7/aoHEt+walvXjZEv0fI5JFjuSVLsjczqAWvdmFvoeJKqcyYfH+pIyTVGKifOCUKf7
	M9hMjTOT9kacc6FijP0IASMDqFOfHdEK34v0Fw4EnhFhaydDJz/CecBXRmczjkMBNYlZ0NpJwWt
	n2AxnAkyQ1ZDRQKE5B5w/I1SQVBOqYxGSNnmOQISpSNGw2vNMPrPUuk8FA4NNmMQRqJsJyRdy8D
	q3OF089SftKQ14qtO+nsXEzR0k7voBcD/4pzdVB1X/MVCry0OjRXW8OQzZxFRKpOsjU6fiDRxPB
	PBtLGHgnA=
X-Google-Smtp-Source: AGHT+IEGi1LrKdNJgL/lmGIuAv5Pk2ftdAlMUoEl8sApRYc88igr6xA7ES9WSa/L4C+CwTbx4pLi6g==
X-Received: by 2002:a05:6000:40e0:b0:429:927e:f2d with SMTP id ffacd0b85a97d-429927e128emr6579302f8f.38.1761505106117;
        Sun, 26 Oct 2025 11:58:26 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952de971sm9880787f8f.39.2025.10.26.11.58.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 11:58:25 -0700 (PDT)
Date: Sun, 26 Oct 2025 20:58:23 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v6 7/8] phy: qualcomm: qmp-usb: Add support for Glymur
 USB UNI PHY
Message-ID: <uz4otxac4seklrdtlcjv6wr6n2tkri2fmuhyrjni37lpbnbcho@zmvmmtxryinn>
References: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
 <20251024-glymur_usb-v6-7-471fa39ff857@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251024-glymur_usb-v6-7-471fa39ff857@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_115828_857295_3B9F526A 
X-CRM114-Status: UNSURE (   8.83  )
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

On 25-10-24 17:47:45, Wesley Cheng wrote:
> Glymur contains a USB multiport controller which supports a QMP UNI PHY.
> These ports do not have typeC capability, so it needs to be differentiated
> in this manner.  Update the QMP PHY sequence required to bring up the UNI
> PHY for Glymur.  The UNI PHY follows mostly the same register field
> definitions as previous SoCs.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
