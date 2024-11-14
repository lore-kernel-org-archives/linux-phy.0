Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF34AD68B36
	for <linux-phy@archiver.kernel.org>; Thu, 14 Nov 2024 16:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1LvxrGquEQ+Xt25MdqT9K5xUtt8j+w8OAl2st7d3GCE=; b=LJ0ZJtH+szCBJG
	l2DBC3q9zuCJKqPrt9TtOq1FPCsHnC+d7SP2YTKhg0nr7ebbwTuGzIreSL4d4AoMu2c9ZVIF8R3Om
	bL76UgoeLv/DZC+tSnFGtlEYKRdqlNNGoi6feHZcO63tHJg2l1qrYlbPqryP+K5qqTBIj9Js1Jfe+
	kxlsKUdz5+G+zXFYAQkfhBXsdHPDzESDdWYtR2AR9AMHJxV7OgQStbcciONOufiur2GlQOCUMRzxZ
	NptlXvGmzniCliZtVCLEs22etbYGp1Bh+TKLCHbUOTEaPtnNSYJhtyb/Mm+Yc8Mb/4aYgvVEbgZEg
	JuQuUPVTfIPMw3QVl2yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBcvw-00000000B2E-1trv;
	Thu, 14 Nov 2024 16:43:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBcrs-00000000AJk-3l88
	for linux-phy@bombadil.infradead.org;
	Thu, 14 Nov 2024 16:38:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=cVzFCO4CN/tzo7kgRuNz7PpOy9J23iqDC72boSlkowY=; b=b3Bat/Z1QLuK4PEYfYa4BqozgM
	n/I9xwGkmLFql6qPylc3uxnN4yAVjsGmI42zCZUtHuguLazBzfDj3UYqqWQ8dWceVKkGLes/j8mhR
	Y4u4yCLWHhcGR6LgGE+qmi43NmnGPzyBK8PBrVmy0fz7jmtDQq46oAb/EN0YkCiPDzpwuS+u7/RGX
	qNcOJEi3UB+7ZAS/a1cBCReLrJSbd2PZRkSYmwkctAAfWrOyO3VQ65cSWL6Btd6xYqhIfpAXXZ1nY
	/i796DkhUyJS9Ob9GvkONEq/Yq1xDL4AI3H8KQUxc8txoVr6Qbta2UGLrzdhNC4dMvNBuMqwBTBSf
	s0VwR8vQ==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBbg0-000000004VQ-2ImM
	for linux-phy@lists.infradead.org;
	Thu, 14 Nov 2024 15:22:34 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AEFKVwe026098
	for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 15:21:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cVzFCO4CN/tzo7kgRuNz7PpOy9J23iqDC72boSlkowY=; b=XwgL8P42UMpQwgSM
	5051syUZoYacPcsQ0YeAQAHKQsJiD4noPtXH57ShFWsBK93UDEuxNEzhBaZMFpKK
	BrWt3qWrHkV3Ps32MxZNUgl6wKbDwUhHXQq090alckTyXjZupz+gu3gdkPCxrDOD
	Qpxnx1llx5KXmpLIQ7zvk34bYogpDyBVrhJ4QSpafxHO6kVrC41sZ3BTxyByllms
	C8uhMH4cSjUVG6oxiOQsLqQihKjhQncVm2fCIYs2zluYWI+cF/pSgsXoSpQkvfsw
	VZi4kv/8Fv6iaAHYFQRKS76Vxh7YgDv41ynKmfM+kQnjzN5vi2BeXzKV8zzi5QhZ
	3U7FXA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42va07fwyv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 15:21:03 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4634796c2cbso1474611cf.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Nov 2024 07:21:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731597662; x=1732202462;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cVzFCO4CN/tzo7kgRuNz7PpOy9J23iqDC72boSlkowY=;
        b=l9vmFtQ+2IOFCVyWU9mP2DRBwTpIQZOt6WaG+sO/9M+eNFf53+do+lESbii/CAoA9v
         6lcNvj1k71QC0vTxsbp+AOJ2crRj6fASHBux1S2C1O/PZ5SyGf/BsisZJn5JMAgqTUF5
         buiIfkBTL/zMbvRuO+VzgzhYSLm0u4Ju21ZW+IQQkmgj5TF9/JsXCqDmp30d88tvLpr4
         360whx0klfAbdiOC393x46yxLf+PpFm67Axb4y143+OY0vTgSlngVaxgpH7BNUDgE99k
         OJKdUzOEcPVv9CHJBhp33SY0Ai+I8E5DeaSDNs4UA9jI+FTtpzfX3xniTGMqH6JIf9R2
         fvgw==
X-Forwarded-Encrypted: i=1; AJvYcCWs+PPlFaeElqrld2a2JwvvSLd0OwwdUYYuPhvaujLHLiF/ToEtxIlQys54zT5aOGav2RVFN6i8hhE=@lists.infradead.org
X-Gm-Message-State: AOJu0YySIPZpUvhBmDNIaIm7fD9bOthfvhft0Wr/k875WXimxN904EkU
	hu69YROEV7pUiyIdCPzg5zrKQVlX9VGhSNLhT4hjUTKnAjfgqsT9dlK8S/EzEPi5Mwk/DCL1hm1
	9GeReTlCBqLyj9qjRq9CuGZ0oxg/K0rSvR3XukILilvc5i79nH9oaT07cXCJA/hU9tpf4PP12
X-Gm-Gg: ASbGncsPuzY7NroavL+8gR/1PpI+M4A2UM9JhctUtzKrJ8gJZ2Yd7ZG9Ws18d4WZbiY
	3fqUIWhU7DJQnZNuKlizj0zRMtaMYvTiBmBwz/0FGFhI94GKj90EiFkmrekRBvpNqhpMvV3X9uo
	ulPnMxpUoTczuE2uKvuSaInV1sZECq5guKCFCl+w1IwVuJB239AGz+8/7BmYesyQaRt6CUL8JCN
	/R1yR6ywmLaZ8ThFfJ3j+u2RnP6KV5XJpeumUsmqX8OR8ENZjpJOtGIsHBrK0BTZa5ahgAB5cfM
	wa84N9xTH1WxOiMa2560kPqQPkeLzMI=
X-Received: by 2002:ac8:59c7:0:b0:458:3297:806f with SMTP id d75a77b69052e-463093f1c4cmr153434301cf.10.1731597662535;
        Thu, 14 Nov 2024 07:21:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEk+y59ahE80IlwvZJl+xqJ/l+nf1VpXpaxxM3G29yJNwW6rj3keR7gGJ6umEv5Aet5TJbTwA==
X-Received: by 2002:ac8:59c7:0:b0:458:3297:806f with SMTP id d75a77b69052e-463093f1c4cmr153434191cf.10.1731597662104;
        Thu, 14 Nov 2024 07:21:02 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20df5161bsm75427866b.60.2024.11.14.07.20.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2024 07:21:01 -0800 (PST)
Message-ID: <c0b3bd36-6ec0-4d7d-9a65-5b8f02cd6c98@oss.qualcomm.com>
Date: Thu, 14 Nov 2024 16:20:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/4] arm64: dts: qcom: qcs615: add UFS node
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Xin Liu <quic_liuxin@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, quic_jiegan@quicinc.com,
        quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com,
        quic_sayalil@quicinc.com
References: <20241017042300.872963-1-quic_liuxin@quicinc.com>
 <20241017042300.872963-4-quic_liuxin@quicinc.com>
 <5fe37609-ed58-4617-bd5f-90edc90f5d8b@oss.qualcomm.com>
 <28069114-9893-486b-a8d8-4c8b9ada1b0c@quicinc.com>
 <20241113092716.h3mabw4bzgc5gcha@thinkpad>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241113092716.h3mabw4bzgc5gcha@thinkpad>
X-Proofpoint-GUID: 1ZE38-9jeMqZ56ObAZOx5rDDLh8NU7Nu
X-Proofpoint-ORIG-GUID: 1ZE38-9jeMqZ56ObAZOx5rDDLh8NU7Nu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 malwarescore=0
 mlxlogscore=775 clxscore=1015 adultscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 mlxscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2411140119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_152232_927290_92B5CB20 
X-CRM114-Status: GOOD (  11.31  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTMuMTEuMjAyNCAxMDoyNyBBTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+IE9u
IFdlZCwgTm92IDEzLCAyMDI0IGF0IDA1OjE5OjQ5UE0gKzA4MDAsIFhpbiBMaXUgd3JvdGU6Cj4+
Cj4+Cj4+IOWcqCAyMDI0LzEwLzI2IDM6MjQsIEtvbnJhZCBEeWJjaW8g5YaZ6YGTOgo+Pj4gT24g
MTcuMTAuMjAyNCA2OjIyIEFNLCBYaW4gTGl1IHdyb3RlOgo+Pj4+IEZyb206IFNheWFsaSBMb2to
YW5kZSA8cXVpY19zYXlhbGlsQHF1aWNpbmMuY29tPgkKPj4+PiAJCj4+Pj4gQWRkIHRoZSBVRlMg
SG9zdCBDb250cm9sbGVyIG5vZGUgYW5kIGl0cyBQSFkgZm9yIFFDUzYxNSBTb0MuCj4+Pj4KPj4+
PiBTaWduZWQtb2ZmLWJ5OiBTYXlhbGkgTG9raGFuZGUgPHF1aWNfc2F5YWxpbEBxdWljaW5jLmNv
bT4KPj4+PiBDby1kZXZlbG9wZWQtYnk6IFhpbiBMaXUgPHF1aWNfbGl1eGluQHF1aWNpbmMuY29t
Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFhpbiBMaXUgPHF1aWNfbGl1eGluQHF1aWNpbmMuY29tPgo+
Pj4+IC0tLQoKWy4uLl0KCgo+Pj4+ICsKPj4+PiArCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPj4+
PiArCQl9Owo+Pj4+ICsKPj4+PiArCQl1ZnNfbWVtX3BoeTogcGh5QDFkODcwMDAgewo+Pj4+ICsJ
CQljb21wYXRpYmxlID0gInFjb20scWNzNjE1LXFtcC11ZnMtcGh5IiwgInFjb20sc202MTE1LXFt
cC11ZnMtcGh5IjsKPj4+PiArCQkJcmVnID0gPDB4MCAweDAxZDg3MDAwIDB4MCAweGUwMD47Cj4+
Pgo+Pj4gVGhpcyByZWdpc3RlciByZWdpb24gaXMgYSBiaXQgbG9uZ2VyCj4+IEkganVzdCBjb25m
aXJtZWQgYWdhaW4sIHRoZXJlJ3Mgbm8gcHJvYmxlbSBoZXJlLgoKSSdkIGhhcHBlbiB0byBkaXNh
Z3JlZSwgcGxlYXNlIG1ha2UgaXQgMHhlMTAtbG9uZwoKS29ucmFkCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
