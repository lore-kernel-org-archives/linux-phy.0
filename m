Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3943FE7718F
	for <linux-phy@archiver.kernel.org>; Mon, 30 Dec 2024 15:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJ/JsU9JozDD8xtDlmSkgztRDzfaE8k+tXrndsb1a5k=; b=hzlIZ7RCcdYylP
	Xqar6hccgEx5GtuMLUcV3jP4FBjytyPbAP6/azZYcz9r7hWbnpz8Aa7frLRprbl3zoWDzShIaJMkV
	uVg1z8BQbuTIOd9BeN2CAptDoYeh+VtUFA3ZM/LcIURnulw0wKwAoeMANX0KztTBdNIDGaXnszs0b
	TUhLQ4paLhHrFCqol1KlTqiqmXVaP37UDozzQqLqS11p5K3zEx1CylyFzQEajRKeUBE7ocp+Fg46g
	5eUfpLOIkLIBoFw4zH4jVYH1AXl6nYnHoiB4FQrzwWg2+LuzhWAtUx3jzv9PyylP30M2F8Bv6uixg
	Gt/4uK9NHUfGJRXq0BJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSHLN-00000005PTW-48hf;
	Mon, 30 Dec 2024 15:06:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSHLI-00000005PT9-451G
	for linux-phy@lists.infradead.org;
	Mon, 30 Dec 2024 15:06:08 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BU67grV022954
	for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 15:06:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ehWfGPcCLSEfEC42hvN/XOS5H/EYqBO9m0oPbiJ8mWA=; b=gRzagZ3ZWUXQ3lau
	45MumRAmNuaKtUOTeAp2MgI40pWbvK/mBiMW3DCQtZI3QFzVHjQCCpKJvzCeX1b6
	jQpN/FrmlXtAeNW0gAqD3M12G2jpvJ3m5VTwJLbicS0tyrStXdjDJ37mncoU61QT
	JmAqKMeLF67rqCh99ZQiXxrMfj1Sj3mjaiOFAJTX+tezfotiSxV7jOl6ahO2/R4l
	sjd152e8i4viRmD5+A2Pg/MUbEJx4csLiel9DsaUTsIbdwSAek8roFlWQokUmx98
	DHfj01C81kaPWLFT4Nl5pu4YKL4TgeYjgd2z29OtysGnm42k6clIRV/MSmlxehWl
	apOPxQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43unys12wy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 15:06:03 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d88fe63f21so21716756d6.3
        for <linux-phy@lists.infradead.org>; Mon, 30 Dec 2024 07:06:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735571162; x=1736175962;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ehWfGPcCLSEfEC42hvN/XOS5H/EYqBO9m0oPbiJ8mWA=;
        b=n5zHY3mabNVJPxliMD5t3ui6XJw1ehjO7onJOPAv/cpqj/BGIRmdR+26A3AFUAtgIb
         6Ns0Q9yfTLSOmnLG0smJVz/QOMhZCLYSF6fNbj9no9x1CkVbmPg9hOBIrPdqT6tWiZMG
         2efDFJbmKL8CVLBcC/U42i6McahoOznHOzm+g5VBXHiZhCW5RX+QVyGYACMqe47pL9Ir
         dxRda2oK7IVSTLhFnKCEavbmBOzMF78YGBsoKr35JqvioE8e6cl9g/7Hkd5PFaskWdlJ
         kq42Zu0doB4de02JOoAmN/PyED5CEjB2jaPEuq1pY8p0OU0ysc3swfCvE4nD0vNHkvF5
         G55Q==
X-Forwarded-Encrypted: i=1; AJvYcCVhQayFDkYLq6wJTVHOD+59ZNLjOrZzIJ5rKhSsPay7E21TIvnCLUSsW6J0ec5FB9ycXnki8D7yXOM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyRoQOehMQ7dJgadDQDxwO7FBDdsjcuM0b/WinME7Oo+PrS3sxA
	HiybCHMcM87r7rzCaXz+ufOtsLUWh9kQCWfVvwDyM77mduEit/WSNf6DYYrknYQFhMFt20IPtvg
	7JEWVhXsgy84jttivEVH1evk7jafhCtQQNfosRVvDBOfe6HKtXF4UVS1BKFLDe4Ks
X-Gm-Gg: ASbGnct6u1Q1WP/mVNub9ohRSfCeTXJnLd8nw1VTcKY0nhu8LUSK3FcG6lnDgtpvxtp
	c/bvHGeYAoXeK+KV2arlfZwfSYjRqW7dNcCHtksqRvg3QhAx6+P2Pq38KlM2a6d7mhc1q7NI5LT
	uFn6dSthyOr0x8654ag9ggG3FX3ZbGHJtWymuZwlC2YrzqN/HlBrZZ6MrShUdniY5QygEUYhSWg
	B6ZJxv5748y0hxmmPoT6bNQ+lZ6LSS3TCnmjbs8BVJiaPU98WRB4aXe1PfSBLoSIeVjGgXUGX+M
	56WR0QCfyyN+reEi2p0SP2Hjfp87DOO34dk=
X-Received: by 2002:a05:620a:454c:b0:7b1:4add:f234 with SMTP id af79cd13be357-7b9ba7232c6mr2332799185a.1.1735571162490;
        Mon, 30 Dec 2024 07:06:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHXsa5g7Aqph9cbjlEpfN+a2POv8ZHcFZcVA5zwUYAJMZi9yRoNMP5FC+yqW0MHB9wXyzdGUQ==
X-Received: by 2002:a05:620a:454c:b0:7b1:4add:f234 with SMTP id af79cd13be357-7b9ba7232c6mr2332796785a.1.1735571162139;
        Mon, 30 Dec 2024 07:06:02 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe46casm1502781266b.129.2024.12.30.07.06.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 07:06:01 -0800 (PST)
Message-ID: <8e60ac5c-dabc-4790-a663-717b7fd6e232@oss.qualcomm.com>
Date: Mon, 30 Dec 2024 16:05:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/5] arm64: dts: qcom: ipq5332: Add PCIe related nodes
To: Varadarajan Narayanan <quic_varada@quicinc.com>, lpieralisi@kernel.org,
        kw@linux.com, manivannan.sadhasivam@linaro.org, robh@kernel.org,
        bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, p.zabel@pengutronix.de,
        dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Cc: Praveenkumar I <quic_ipkumar@quicinc.com>
References: <20241226102432.3193366-1-quic_varada@quicinc.com>
 <20241226102432.3193366-5-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241226102432.3193366-5-quic_varada@quicinc.com>
X-Proofpoint-GUID: _Hr7ykEDNaZkVJiw5z7G_syVdqy3PsE9
X-Proofpoint-ORIG-GUID: _Hr7ykEDNaZkVJiw5z7G_syVdqy3PsE9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxlogscore=755
 malwarescore=0 suspectscore=0 adultscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412300130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_070605_151529_9BC5DEE7 
X-CRM114-Status: UNSURE (   9.51  )
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

On 26.12.2024 11:24 AM, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Add phy and controller nodes for pcie0_x1 and pcie1_x2.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
