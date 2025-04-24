Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 896A9C369D1
	for <linux-phy@archiver.kernel.org>; Thu, 24 Apr 2025 11:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3BWOxNsWuhtEW/th6n5kNVc2la2FTrp/nYgMLBRz0Y=; b=p+ICJCoqvzrTgM
	glln4LXem+O1PHc9u1Yuvd/HiDvOwYjzAqxDLR64GJXBfekqZ5TLGv2XcbnbGB98zQzGbA3REXQTn
	ZHPgBegKd/jsKK2v3rDylDLT9rRICUFNU6DGDF7bTLbyhJiF/+Vi7/853p3v367XbeC8FU0NO/Kp6
	FvcYLCXdu3Q9igKBZAsfiuEyZp1XYxT+d3G9kkS+lbMfE5erxHZjvR2iPxQgp/SIbtENaM/5WXfG5
	tZlJD+Nx7hQccq0Oblpw/DXxxA2NS4G4clnyhYZ4MfdumjdofRzY44F9j8PnDbX6b1BXzSlSFkaiR
	fcN6vny9BkcwQ/DOXkPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7utO-0000000Dsro-0eDV;
	Thu, 24 Apr 2025 11:37:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7t2w-0000000DXS3-1TV8
	for linux-phy@bombadil.infradead.org;
	Thu, 24 Apr 2025 09:39:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=2f3dK7+MKJ/z1loG9CU/AAIIV64HRI5KTaq4hfss28E=; b=ED1sIoxEBq5TUJUoXMucAYocuO
	3XhcwXeUKNqTEkLgZlsM7XxTs9fZ+yNnVZKFdicNmUXZUhYCVm3c6bXqL2q11Ht0Wn3hDH9Yuue8u
	DM9HeD+pfqvCs1zuPG3WOAfjGpHJSnq9CQf9WnaxWKVbVaLhPPP+lHcQTXBHMcveRO5YPSGSdeDC+
	9/udA23Cu2AizLewYoNOkqUkBwwatjoHrhzX/zJ9Zf6cTvaYEYLhiQqy235imAi+0eyM9OKuNv/XO
	PLR1sF6E65K3j+M8sC6LqXfosDpJGnrb/XJ4nq6CfFT7QXcdJNQrlKSq42ItKHW5Kb/MxBC+VIPYb
	SNPogyEA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u7t2s-0000000Bgq8-0Wgn
	for linux-phy@lists.infradead.org;
	Thu, 24 Apr 2025 09:39:03 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53O0F5i7028322
	for <linux-phy@lists.infradead.org>; Thu, 24 Apr 2025 09:39:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2f3dK7+MKJ/z1loG9CU/AAII
	V64HRI5KTaq4hfss28E=; b=U8a1newRJEdS9P6IAa18vzlihzo2D9BcXOdX5yOJ
	Oa4bDNC3lgOmphXitQm4leabcGaZDhhlNzJl9KhHxDTKGiliBt58f4p+ZiX5y/Fc
	HFqmdOOHc4yXGvsNx2kWMnpj8IGnoxW24Im1ZkxZFykXbRWmjt2K34atY+Z6STWf
	Z5zU/4rlDMrOGtRiG2dbL4MAJQ5MUAyC7YbQPvoQKvfVIzOicN264g1THBFin/xW
	WKSOuTeu5IUxqn/gNk78m5HtLVbVsx+CJZq8zMjBJTb+P4Jc9VyvR/pazAHoljvX
	PU+FTpYnToVVBWwDfWS9azPHsXRkF7YqnR5IMTSOYndiMQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jgy50w1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 24 Apr 2025 09:38:59 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5c77aff55so190094685a.3
        for <linux-phy@lists.infradead.org>; Thu, 24 Apr 2025 02:38:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745487539; x=1746092339;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2f3dK7+MKJ/z1loG9CU/AAIIV64HRI5KTaq4hfss28E=;
        b=HUn3PKJLCyHlwEuKgjw4mDl0qtJVMw2wv0HB4p2ABbVy5Y/0Cs0xZse1iXJhbQa5BR
         /DiO5BlBgcT2KhTnNVVIF0fjZJr/GB1reYAEoTn6HfJ8U+laqmxdGTwroIWE7vUyBZQ7
         5bWyCYnSUFFnwG7t6SZaVf7TVG1FHTdRqfFbJGQ+xW8xOrZpbvNsaioqhsZRNyznxAO9
         qsS9FJRsDg1F+1cF/2ksVYm9tdwSQewG6fKhHgaV1vkg50kT9kVBvi1UVZeFIGM4Kj2w
         CFfnV34QXq/1HW9Z/djAe5CPvqcDu+lnnpvAfnSvruO9XsXfxeies/SenGlNebaxD9YT
         2eAA==
X-Forwarded-Encrypted: i=1; AJvYcCXi4HR+tM/W2Jm3CfRFGqwVAcPdY4tt84+Y/A5MfF5mmj275gEFI5lznpifBxGrgmksaSd4gQR6a2k=@lists.infradead.org
X-Gm-Message-State: AOJu0YxSiStU4FghvJEJxraG1T+a19qYBePH+fXKBYt7cnElhgGmtzyg
	I1SccOtWkZX7eMG4ByKCyRmld6SyxlGMHAKyCcRX8vLVfVsVQcwnYx8dhwu482f1mV13jknWqQ0
	ss0300rnG1tju14UK4oD0NEs2NDdq8pveSR6mh3QJQjnA0BhTSvKR84fqSJeMTT5x
X-Gm-Gg: ASbGnctZMDGOacQcTDDbxBtgPIls5T5fdmCVmctTDXWGGdK1ZYMl/oh+OCKCZ5d4TvL
	IACrFgL0KqgHUTEHytq1JxYAQlDD7SdElsICoX0RVbNGDvkTcuB9AsoxkTxNY1qInIUAjsAtqzV
	6i8t2kFXV0yMeU71mojG9nPBl57urYuIheUjTtCQYhhOEc0T4vZAgMfNhoKNGDpDF3CdZlNoovO
	fkqW6FpA2z4VzL9c1l8SOwsUj8S+XFDzVZMCFIhDkx18/EjOuZwLrd9BEwOV5BQwB5aCB/F/Zun
	UCS5a2tzxdNbQJ9ci0LHJBS5JA35qEmTHoKlrha4DeTEMshaG6h0rEpqQKHbI7xs8JxpW54r8B8
	=
X-Received: by 2002:a05:620a:290c:b0:7c5:9a2a:aac1 with SMTP id af79cd13be357-7c956f281admr276027685a.46.1745487539297;
        Thu, 24 Apr 2025 02:38:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFVpA1BUKeX5X8TebYkgy0ZTMhGuaFRaUuMOgDF2vXdicDx4tCttKkvklxUD+kzOdmlB27N+A==
X-Received: by 2002:a05:620a:290c:b0:7c5:9a2a:aac1 with SMTP id af79cd13be357-7c956f281admr276026285a.46.1745487539012;
        Thu, 24 Apr 2025 02:38:59 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7ccb7791sm166472e87.211.2025.04.24.02.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 02:38:58 -0700 (PDT)
Date: Thu, 24 Apr 2025 12:38:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Melody Olvera <melody.olvera@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 07/10] arm64: dts: qcom: sm8750: Add USB support to
 SM8750 SoCs
Message-ID: <rvjdnmhn5pb4dbhp3jxcmytr2svumafutopjwue7nueu6ymcsh@dbl7kkoipae3>
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
 <20250421-sm8750_usb_master-v5-7-25c79ed01d02@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250421-sm8750_usb_master-v5-7-25c79ed01d02@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDA2MyBTYWx0ZWRfX0QyZgP0HGvtz XHxyaNR3/9oomjo3Kzplx1DdHDGlh6hQtB848U1kCypG315DYw4NpiL66/g3huyjHZm/vCgB/gT qwDROVF5f8Fh8BQHs7PWQCREiSyREKUgW4f/EV0MNVdCE0L12AwoMJXgq5proVPt8eG8FO4uPjY
 ilJgbp0wbjcKSbxkTXkg2hNZi6n6tO4nemZpePU7WVch3xXgkEeK+h7zfSfFhGLTx1b/Xv7KvMr mpW5zeYi43tjErq0g48ml6fctuOiHS3XQzxFWKwAteF1IQXt8DqrNnQN9XpbOz/EA9k7QGLWd1Q pmrvUb/76bwrox/J+zvRnltFU5VFhCbpwLzsPAVozyfd1gbEyu0ceRafDPPvEnQu/FwqJ/KE9x6
 iyste4boZubXqpyqutMtSPPZfRZM99O0Tj19cCiooEeqHwUBF990eWE8kJ3iQTLQ91dk4pOw
X-Proofpoint-GUID: XpDTDnYjU8U3TnYt6-kOdo13cdKH1fN_
X-Proofpoint-ORIG-GUID: XpDTDnYjU8U3TnYt6-kOdo13cdKH1fN_
X-Authority-Analysis: v=2.4 cv=M5VNKzws c=1 sm=1 tr=0 ts=680a06b3 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=oz0Rim8_5s926H0KrIoA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-24_04,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=577 malwarescore=0 impostorscore=0 clxscore=1015
 suspectscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_103902_455984_767248F8 
X-CRM114-Status: GOOD (  15.28  )
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

On Mon, Apr 21, 2025 at 03:00:14PM -0700, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Add the base USB devicetree definitions for SM8750 platforms.  The overall
> chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
> (rev. v8) and M31 eUSB2 PHY.  The major difference for SM8750 is the
> transition to using the M31 eUSB2 PHY compared to previous SoCs.
> 
> Enable USB support on SM8750 MTP and QRD variants. SM8750 has a QMP combo
> PHY for the SSUSB path, and a M31 eUSB2 PHY for the HSUSB path.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 164 +++++++++++++++++++++++++++++++++++
>  1 file changed, 164 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
