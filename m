Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F02ADE7718A
	for <linux-phy@archiver.kernel.org>; Fri, 20 Dec 2024 10:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cvfGzSuGazWgKVjWzT/ASylSDokqpCJtEYDY9KSDOXY=; b=0VWUbElqnEuuSm
	kbRQRZ2UGGI2/Ur1DUX6rjdWCNfcv/XiA9FnMDhfx2EqndBvW59DeHncE8C9KNg3yBTIucWGcDZ9N
	FeKFRwFDJOCtxtHQrmP1nSJTISdSOfEY8VdnNdIqDKDDa5vk3tOo2H3X09ztW3TOItl0r4lojK+Qs
	zzKnGEr4IcTUwiUj1qyZIf9LumO+9wHJQv8G3CGxSQ4gVRkPtPWSaMgJrOwOiflJX1S5pMo1/mgDn
	TIUmnHOdu2QzblOc0IQYNPK2pkST4xUyhec6gIR+AODLaCq/lJSDZr6IGUV7iTJkE3yDFNFqG/9cz
	ZnoknE+DUlA5umcXeJNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOaDA-00000004aW6-366T;
	Fri, 20 Dec 2024 10:26:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOa4W-00000004Ypa-0RWx
	for linux-phy@lists.infradead.org;
	Fri, 20 Dec 2024 10:17:29 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BKADii6008406
	for <linux-phy@lists.infradead.org>; Fri, 20 Dec 2024 10:17:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wrpm/RvJv4pqacQSl95wP5M/EJZnFTnri3TZQLQlVCA=; b=hAxU+lgFGE2X/6wu
	NdYIb+VZLP0ogvuttHDlq34Q1iUgb07Fn+CSka9QhOucMSGFyfoqogBKHhL4iMcn
	qpu+ifJCdiFiRQq41YqstBOF4ThFX+LNjitowUzzSJTndh4u53F1DAVsRZsRhuFO
	nse171owuVycrLxtG5JIagm50Mf3w3jkZxAr3+7WTmAGl+RlZgsePv7IrUU6xnm6
	xoPbMxsDscCTiVwPUp2Z7g6mh+d7Qomrdj9PM0qoG8A/A30Mz70IrMrOsP3uRSVK
	EBzE9VElQU5N2by+dMl/VpMuYrDEH28sknxojrHeDYID0053jzZIZX1bKxaaY2MN
	9vnImg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n6n4g0aq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 20 Dec 2024 10:17:27 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d887d2f283so4548276d6.0
        for <linux-phy@lists.infradead.org>; Fri, 20 Dec 2024 02:17:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734689846; x=1735294646;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wrpm/RvJv4pqacQSl95wP5M/EJZnFTnri3TZQLQlVCA=;
        b=c6iLrIyFQz5Ncbrw0jX5mQb6xp6qP+QaK4/5xGWJh6xjrFdJ/nSlWXr4DDirkhLIiS
         ivWmfsc0EfBdGpK8JB/dKEdaHgtnvRsUT8IGTVCL+bElz4xjPwev2iQfshvcEn2H6NVY
         Mq29MI63a17sYr0x1YVQn6q0tgnuFW3gL02Hx0ordAARcRnxjllQr8UEAitJDfRiO9cN
         jTcn0n6AeXoqKl8qEi7cutZA1dcdLo+qtFQ0gpCmCjb5E1X1rEp2Jtk4ivkJLb17CBYm
         c9/oj0GLGpdSs/vRTaUpVc86uS4HTbukl0pR/HJai4iVWILZy6GohCCw7S/pOHCPsLlN
         3UlA==
X-Gm-Message-State: AOJu0YxPGTthUtJPnGKV0Gx1d88AHQpp0dtWbQANPN4ZGVYgc2uZy6ky
	ysHUmGuYQyzSJRGMWJ1FuzGeTiIgfUticBJPKAxRxr8yUTSbDKEY+zVRGNpvaMwAYWvlqQ0ejUJ
	AePWjPw6H2+zkHiyJXqF32ESM5kbnVdiQ/Mymto0bK0PeGhF5t1YbEMxIlg0aUlUX
X-Gm-Gg: ASbGncsXOzqUbQsKX6n6R3DKDGRvv/LeBn8ATUzRE3DhV29KLy5OY0F9vSfbSt8gj2l
	f647NPFJn4jsUuL1d3A9efi06p3PoAXdOQxn8q6w6lUmTtVJNien+T1qYWp5cQYBEPeUwEp5c5S
	0rN9NEamMKTRZJkYYzO5fLZLdxfg2h6ucBQiQlgNKnxqehh4+O9BFqIjNjKigQ5olJgvfYtOWE9
	lgPgemT60iK378rimX60Y+P5qqD+rDXLv5m1yhWxFlH2JDz+rg6eulIRcQA4HA2PSbwh0L6n+Kn
	JZQsOjXqJ/aJ4M7QGUrv2MLemgjvE+7XebA=
X-Received: by 2002:a05:620a:4455:b0:7a9:bc9b:b27 with SMTP id af79cd13be357-7b9ba733805mr115535785a.6.1734689846242;
        Fri, 20 Dec 2024 02:17:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHWt/HpECNmTA7E5A2IgoO13Yn8mzdDwcbQ+XpPB87YicCL8ukox//oEwyNPqrgS2GNb+JyvQ==
X-Received: by 2002:a05:620a:4455:b0:7a9:bc9b:b27 with SMTP id af79cd13be357-7b9ba733805mr115534485a.6.1734689845814;
        Fri, 20 Dec 2024 02:17:25 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e82f5f4sm159878766b.6.2024.12.20.02.17.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 02:17:25 -0800 (PST)
Message-ID: <ab23e0ca-3c2f-44ab-b6d1-cfcf63f29f74@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 11:17:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 8/8] arm64: dts: qcom: qcs8300: enable pcie1 for
 qcs8300 platform
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org,
        manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, kw@linux.com,
        bhelgaas@google.com, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20241220055239.2744024-1-quic_ziyuzhan@quicinc.com>
 <20241220055239.2744024-9-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241220055239.2744024-9-quic_ziyuzhan@quicinc.com>
X-Proofpoint-GUID: 8cAGyEMbMn-aBHD3FdE8Cgqo4QvUP8ME
X-Proofpoint-ORIG-GUID: 8cAGyEMbMn-aBHD3FdE8Cgqo4QvUP8ME
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 suspectscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 clxscore=1015 mlxlogscore=739 lowpriorityscore=0 mlxscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412200084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_021728_160038_8723F721 
X-CRM114-Status: UNSURE (   7.98  )
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

On 20.12.2024 6:52 AM, Ziyue Zhang wrote:
> Add configurations in devicetree for PCIe1, board related gpios,
> PMIC regulators, etc.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
