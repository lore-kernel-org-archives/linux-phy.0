Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2142D75E3B
	for <linux-phy@archiver.kernel.org>; Fri, 22 Nov 2024 12:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwjVtYE7m8HF9cv9da+t4OlyOf99SBHbdJxeShX0bXo=; b=xHG3B0ME18rIjJ
	ShwL8zLBZUxA/jn3Z0JsPqTIzx6Kl85DLjZEoiVq4ibcif4I9HY0no+Xl74Z9RLsllHzSupWmP4XS
	UnYQ7NDu2O0HdwSDCOGkMaX45xf9ANvjkNjuZjoKG6R92G13kWq7sAOeTnPZP4LPhrxKJsaF4FkT3
	uCbKyeoXFTIvjxgt9qo9tnsPOxY7BVd+3p/Igdf+isE3WLwslfiWDCVi582F5YW+IKMhl4iBW95yN
	G9uXovTlM6YR8xBEcTKHctzhJoAqvoHsGdiom76l77ZkxU2SjugqzHfzKkCuiqWa9hC6G6qvntG+B
	IL3DTZTngpdXKJ9Rzq5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tETD2-00000002UzM-0wEU;
	Fri, 22 Nov 2024 12:56:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tETCz-00000002Ux3-11Mg
	for linux-phy@lists.infradead.org;
	Fri, 22 Nov 2024 12:56:26 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AM8wa3E003963
	for <linux-phy@lists.infradead.org>; Fri, 22 Nov 2024 12:56:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tUW1JtHByRPvJW3av3yXvdSnDSeT0Wq/tBStqi3Mqhk=; b=BJr8FhGuZpvWhucl
	5S4DJ53D8opMhrDATMHKsaoJlru1mf5X6WoHhqRyA8oj91xbWY560QD0RJLSdBLq
	nGVvh/YTUdN5L8UdqrIzSBk9v25tLmIcqs7FaLp+Cmo6mcpO93XkYxx2QMwY+YnF
	TTFBTuQnRTJPlrMnTfaJa3+yDbvJCTqnYsvc6x0pWLmGHCBXZVD1kb/DscD6YQ4A
	Z1SR8nXTWDKQ1rxJxE4RQvqPdR/3cP41EVZRgNg3RGvebngcpfwzCBX0UKHbIPQD
	d1k9/zvVoA68/VBfLdR9zeJkhR+5s6IZG+xfTVPfo+HNuxo9A4QRauR/YTTEbXSZ
	ORQOmg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 431ce3fckc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Nov 2024 12:56:16 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-460a7a53e1cso4336001cf.0
        for <linux-phy@lists.infradead.org>; Fri, 22 Nov 2024 04:56:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732280174; x=1732884974;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tUW1JtHByRPvJW3av3yXvdSnDSeT0Wq/tBStqi3Mqhk=;
        b=AT/PG1tD53rNdMOdOF61R9tNbpPrFF1mRcpZj7Wnw7FhZqaQxBW/kWRxLZsRLOoswR
         Ba+p4yAqeSMpnLlLmBZ6Wo0aj34f3YZdWJzODzxfnYj4SCuYB6Ewir74ZcI6QL/HWJ5a
         +Ei58XPitAaW6vdhCjizMem2ibpDG1NMPUIIO9MT3iguxK/kyfO/wOKfuhPi/OVeMVty
         lab+f4MNopIYZYyW4ecWqMaHSl/QdKOJ02GAXp9SMw67pJvdt0eyHsVG/rTI6+FZRLiN
         sbTNRjuwN+oCVP7npGd3XFXsKEUbNZ66HC/+1pkWdqY2s/CH4575SmrjZ42bK8p28eNL
         fScw==
X-Forwarded-Encrypted: i=1; AJvYcCUZiSfkRq9xfumpexDJWUNaPXakgAFo0wKr5fMHTu4kMYRF2NpCXfMnBTaXAaN4yQf+UfnSfCjwuRg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/hA3S8wPPBag1slLkTq+9JZCNXTAQZsfbDg0rf6ymwJ9DX6l8
	aPvG4zy185Dst/Q0XTJtPHNyhVX2uEL+RmyMXXL8BGlar7FgEbDPytSxt+IXa4rIx0x/K/DKBEe
	EzbNiA1a44dc64c0qbul+8zVpxqgC2Qq5j9aVnoB1oG2qUJyDfKP1uAuTmmIjgJjv
X-Gm-Gg: ASbGncsUr+6FcixOmMWYgiJjBPujIEMNdknuqIfkJtjA92tX4t+nOQpJx5neELyjenr
	PX1kfazGFtSmDcYG5yMTgPKygA99TLbbaEvObm8wL1ddKko42tCbHJNdna+Ssa9j/hJV77+02NA
	ZChJvb43yGYCTmvCJBNc9ej/AEokjeyjoJuV3MJp5n+wwBIEM0Ga9R9a9CHRSNBYIxjRY6jF1Zh
	sgZvSN4YZUs60FtruHqMtSuU8JBLq/ZgAeG9rrGzboav/9/lyqnbHHBJYpMknwjTNtqs9NW0lKg
	20cgrVl7ggCwo26H/+bu431TpOQ0Xko=
X-Received: by 2002:ac8:7d49:0:b0:461:3cd2:390 with SMTP id d75a77b69052e-4653d6207ebmr18354561cf.12.1732280173690;
        Fri, 22 Nov 2024 04:56:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHXp5AlSiVdDRiJeviQopjOcYQO2cIs6n/WiIeQPHdV9fV3//vnc5hbPIVnUu+s0vmPw9sPYg==
X-Received: by 2002:ac8:7d49:0:b0:461:3cd2:390 with SMTP id d75a77b69052e-4653d6207ebmr18354171cf.12.1732280173259;
        Fri, 22 Nov 2024 04:56:13 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d01d3a3bfdsm897816a12.5.2024.11.22.04.56.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2024 04:56:12 -0800 (PST)
Message-ID: <e107da7e-cc12-405d-b5d8-589959df072c@oss.qualcomm.com>
Date: Fri, 22 Nov 2024 13:56:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] dt-bindings: PCI: qcom: Document the QCS615 PCIe
 Controller
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>,
        "Rob Herring (Arm)" <robh@kernel.org>
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, quic_shashim@quicinc.com,
        kernel@quicinc.com, quic_tdas@quicinc.com, quic_aiquny@quicinc.com,
        quic_qianyu@quicinc.com, quic_tingweiz@quicinc.com,
        neil.armstrong@linaro.org, andersson@kernel.org,
        linux-kernel@vger.kernel.org, kishon@kernel.org,
        manivannan.sadhasivam@linaro.org, kw@linux.com, lpieralisi@kernel.org,
        bhelgaas@google.com, linux-phy@lists.infradead.org,
        conor+dt@kernel.org, konradybcio@kernel.org,
        Krishna chaitanya chundru
 <quic_krichai@quicinc.com>,
        vkoul@kernel.org, linux-arm-msm@vger.kernel.org,
        quic_kaushalk@quicinc.com
References: <20241118082619.177201-1-quic_ziyuzhan@quicinc.com>
 <20241118082619.177201-4-quic_ziyuzhan@quicinc.com>
 <173192264707.1449621.6365585789543415603.robh@kernel.org>
 <4226d136-034f-4b7f-a82b-e370ef265958@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4226d136-034f-4b7f-a82b-e370ef265958@quicinc.com>
X-Proofpoint-GUID: I2KQ1iybEFRf16pBOC9D1Ap-7Bm4hCQ-
X-Proofpoint-ORIG-GUID: I2KQ1iybEFRf16pBOC9D1Ap-7Bm4hCQ-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 bulkscore=0 mlxscore=0 adultscore=0 spamscore=0 mlxlogscore=744
 suspectscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2409260000 definitions=main-2411220110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_045625_289137_C820FE4B 
X-CRM114-Status: UNSURE (   8.31  )
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

On 21.11.2024 8:22 AM, Ziyue Zhang wrote:
> The dependency is missing, I will update in coverletter
> 
> On 11/18/2024 5:37 PM, Rob Herring (Arm) wrote:
>> My bot found errors running 'make dt_binding_check' on your patch:


Please don't top-post

https://lore.kernel.org/lkml/YH%2FfM%2FTsbmcZzwnX@kroah.com/

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
