Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B467E77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 15:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ozrrz0JPkjQk8/M5i5/D9BrGONvRg6+DlOhC9pdptlQ=; b=A6hO18s5+M4wus
	wvclgcq4V0ZPTHqHxwPmBfpoqG7W9NcqvIK9rZWSuOu5TqtlVUMPTUEGUy9Wd5W6xFx6+dDvOpUdl
	fJiEUBj3D7rg7Nzzh0lBSG8wo6kNuym90IaluBIZHQkjm6FbZRC5OVi3F6k3bLi1XuYfjxFqZ5eUi
	YUCVm4+nrGdMkBW6UHY4ChdpC35gRMd5OOZQsehIWk7FYCebiG2Mu03gjTQn3N1J1nU6gmHncraR8
	GmFQJKmji0oR5/8IilpKPACH+vkCS0y9tLiflK0cq+9jaaqsiLF5imFU5j9uC7ierrJ9a6XDC48eN
	xbBmRxhL9Q9AWI7NiDKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6zL-0000000CDuC-1Gyd;
	Tue, 24 Dec 2024 15:38:27 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6zJ-0000000CDtR-2UKz
	for linux-phy@lists.infradead.org;
	Tue, 24 Dec 2024 15:38:26 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-53e3a37ae07so5572748e87.3
        for <linux-phy@lists.infradead.org>; Tue, 24 Dec 2024 07:38:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735054704; x=1735659504; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h0Oia5cSyFNAwnllDfYlykDp3sapNQ002K1yDD8Y/30=;
        b=KEQGTfG8wojOVbiEHnd0k8ZM8qXLTVrfUZEpDrf5YSPNDpCRsuABijDj5tl+RxVOia
         1l0foHsK65RKBUnE66hKLkXGBz59H6tK9b18sh4ZHbWdzp1uK7cSx42yt+vUeZRwR1No
         wmo91GaunSyZWJTo9aNbkvDhlK/mFOlevfsLUmIrjA+1q57Ic4PkoTbrIdMAmtnj8fSW
         kusQs8hrQgYsbqC1vKuZ+U2G/pLx50rSzy6aqy27+W/wmNUEKCqgzL7tGqRgYeLk8GV8
         zoYW6soCTFtE7iMLTHC93iLVNDPJDHdN/+nDcLqH+RAUDAhRc78kyCMTQdfAyCzjBgdv
         pSPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735054704; x=1735659504;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h0Oia5cSyFNAwnllDfYlykDp3sapNQ002K1yDD8Y/30=;
        b=KpgWh+9p9yGAYqcpOTEkOCyT0JyGyT+JvpawQoGfOqs0dYLV5IH2qnALZnyq9wHuMz
         TrbRCj5QGa1AGGnYqzgRpQAL9CQt3s9CALDIOM4MZ3m98s0IKKeNbmJTuxm6+nxndwyc
         gH57GLq3zGyoNKAr9eX4w2Kn/UROHSkthCx5jUrxNKSJqws98s2fZK64KR6i0zM1a6hT
         CCqCWWTdgntb/fO2Xy9Xrbb9nCf2WD0N5N0pP4QoBGONaMZibkO1cmLxbEyK+lIL9xQn
         EPODF/iHMHAiZul8ssivNn4V0dV6PkNNaTcD4KwjbaeP1r0JZAlwfscSsHAYnIaQIS1Y
         UiZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNjnaV2VZ+5zslwRVC7mw6lzbndhS3yhs5c2jxOanE+fzAOoOnIhlU2MO4SfqdNA7XujovWcZCH6U=@lists.infradead.org
X-Gm-Message-State: AOJu0Yya7L56lfTg/fa8RpXpMvFTqEUDTD04/tp7iXMwW9EH04rtffmI
	qPjk9FCp1kho5HGGua6lLKN7qqL0i6aie4iFMt6frCwwKGkIB6n0MUVUz64xh38=
X-Gm-Gg: ASbGncupeSn+G5IgRbtL6UssOQkFGZiWTHdmEp7QLW50tcpDjIdHM8dxhcQ+FuCsM6j
	BWav0Jlf2g2S+a4dXXFwods6IQT6cbcs65EthCQAD9YbAxboMt0SzUnvjTGYAmIwNNh1BTIKIoG
	A6G60W+mZJUTwVYILTsUvDoJB2lkwFB2KFxZSbvHyC9Y4+3eOnjnCUeRcd1LERS5Bn4Dt9Srufz
	FtbMBe9oq9PdJhmfdjIeunsNArFM+Nl0+dRFT2Lbw5+C43DEULghMXAm7QFiWOseKE4WqiQ0xxe
	x8drIhP+w2MICLQfiaHKXrjdpan22vLSpKzY
X-Google-Smtp-Source: AGHT+IGG9MpHakOcbbBjdzGFiZ6xINKKS0ADYfvgfkXApWfdFrPdrKibPUeTf/TxOY9JR4fZcJeuig==
X-Received: by 2002:a05:6512:3d22:b0:541:3175:9775 with SMTP id 2adb3069b0e04-54229533622mr5573238e87.22.1735054703594;
        Tue, 24 Dec 2024 07:38:23 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045b096cafsm17159991fa.123.2024.12.24.07.38.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 07:38:22 -0800 (PST)
Date: Tue, 24 Dec 2024 17:38:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, quic_ppratap@quicinc.com, 
	quic_jackp@quicinc.com
Subject: Re: (subset) [PATCH v3 0/3] Add support for USB controllers on QCS615
Message-ID: <anfqf3jvh7timbvbfqfidylb4iro47cdinbb2y64fdalbiszum@2s3n7axnxixb>
References: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
 <173505391861.950293.11120368190852109172.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <173505391861.950293.11120368190852109172.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_073825_643560_48992C75 
X-CRM114-Status: GOOD (  12.79  )
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

On Tue, Dec 24, 2024 at 08:55:18PM +0530, Vinod Koul wrote:
> 
> On Tue, 24 Dec 2024 14:16:18 +0530, Krishna Kurapati wrote:
> > This series aims at enabling USB on QCS615 which has 2 USB controllers.
> > The primary controller is SuperSpeed capable and secondary one is
> > High Speed only capable. The High Speed Phy is a QUSB2 phy and the
> > SuperSpeed Phy is a QMP Uni Phy which supports non-concurrent DP.
> > 
> > Link to v1:
> > https://lore.kernel.org/all/20241014084432.3310114-1-quic_kriskura@quicinc.com/
> > 
> > [...]
> 
> Applied, thanks!
> 
> [2/3] phy: qcom-qusb2: Add support for QCS615
>       commit: 8adbf20e05025f588d68fb5b0fbbdab4e9a6f97e

Is there any issue with the two remaining patches?

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
