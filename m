Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45CC5C54E65
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 15:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ae0HL0W4DHMedWGKHahbnI7HuFI+S3fmsaa9HIVNUog=; b=TaYQR4nnwMNkUs
	YfIvPK5fhdt/jCTQi1/Qe3ZxoPEiqPFsaagsJU4nVHpXskyKP05jGHDP+ngUG8f09/QFZukKqpdRg
	oPz452lRp3lk7Ngk4qviTUbeeQ7j/513eDzkZWKkP+db2nGxH3iTe+SUn7kxD/+hUDdyP6oGkAFNE
	zs9Rl6tM6gF52in3KQXg66OzpcKpzjmfsz4H27gi0jAQJNHRM8NIocHvXe5eBLVIlqHh5cUqg1/5q
	3SfI/SqZNaN0e+GQSluTTnS9PKqf0n+lFZu5gWIAxHEWhC6/XZxweJN6BXnXW12qvhqQU1Q+h+5Iy
	ZPuBfPLQPdaNYqVWMITg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI81G-00000001Soz-05P5;
	Thu, 22 May 2025 15:39:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI7Y6-00000001OAN-2oDN
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 15:09:35 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54M7MJXQ016624
	for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 15:09:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4TU7tpZlMQ+Z/J8LghDjXFqurzAXCCyNj4y5yRCbxxA=; b=UPdtHD0t5rzG2PyO
	uEeYfmAhVCCytztDb7YFG43djr21rHuLH/C9324MtN/udM9cjQ4LGYHjU03nP/Wk
	FsRhYS9dLwQ9iG/QZyFyz8qQi535GH9OD+iTbNmL8OPf8HhTzDLSeOZruddMzMSx
	VZobcU01dbMxTRMn8RLpnskm2mNq0ZBM6XZIc6CNUtohE7lWZaAhd4/qzRjTvUEp
	wunHxEe9L9pJpAOVIj/jj5NSGlHPui9Y0n8j99grPRh5RYyuu/gVEI4e5TSgEDgj
	rVvizRGnDurLFSqUKMUnkjHYIiqZfubZb0MMi3at6lQqYKPgkuYI87wnPPB+gD14
	O/20eA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf9xrxf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 15:09:32 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c54788bdf7so72067085a.2
        for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 08:09:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747926571; x=1748531371;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4TU7tpZlMQ+Z/J8LghDjXFqurzAXCCyNj4y5yRCbxxA=;
        b=xGgagUcfAdHiTyZzEnUCzdgBNsNddwAoCpXHKDDY0khfP1gQfH6ltWqNu/WCCf5dXE
         oy4/uOlRDAf879KJ1HM9qIn0GIPEfdd0IUgUSjPxnmvJWPca0Awl8o1N6z2rL2Ohhj2n
         d2Eh0rZ48lWJnW/uwybXFjk/wJeCXtTS/cRzNeGAaygPeoHN48SHjlw6ohQY8tU/jddg
         1ZR7N3A7tTiU17lhiEC4coD5vjF1w6QaPyg7Qt+g0DB1Sx9A+tUt3S2uvY6H/yoAyLxG
         q4JgUBl/amQ5k8p71EolrW+CnJlU0c/f8UhkdRrMgLKIV9nwpY/7oe37+HAm5F+S5sVr
         FDGA==
X-Forwarded-Encrypted: i=1; AJvYcCW2cUmvolQFQwrILZ+12iv6prZ4AKkyGNHxvCZDnIYxFkbc6glSSHteB6IWxIXhk0Xqf3xi2WxbdcY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwNQWNbPWyiWa4RotjGfC+IbUy5MntaoPErjtlozjPU18CP8IFm
	wIikgW7+w65Dt3oqkBwWQ8/E2VqZCGlRVJwpUAP7Ar8k3Bpb1lbNOGjReWB2RI5HamFEFJA1KyO
	KvOKe6pcsih6zm1nMsyZuW3Vy8WfWgX/sUe4497j6B/70vmP+ttgvbdZkUys3wJcNdmaU
X-Gm-Gg: ASbGnct1ClnY7tF0QZWxfwfsroDTl903D7sdotqOIgo/AbzHt057ro+0m0jk/mjBRrw
	oVZ27MANd+Y4JHcrUGAhD9Nh0OtRjtEE2Lz+b0pUXcqU/hBwFp2RrVm60Ko2H6wvmGX81PeFe5/
	EYzc/2A575F1IGpWHC5R9SFwpjun3BJLuV5FrzHNAVUrDcOtMrBtkUeWfVsOgGgxjR+3zVFUldi
	WDkw+vAW4OHgI6lRi5PipR2iPkLCgTtACoSl8uqGXER3VJXiISMiyYxrbT+UMiCd9cUxq35+Hq/
	I1bA9I2KQqQtqYCSd94Z5FQ0hwHVxxCBss1K3vrDUFsEwOtJUaQ3vadlWdO0m55r1A==
X-Received: by 2002:a05:620a:268c:b0:7c9:256a:953 with SMTP id af79cd13be357-7cd46731135mr1464770385a.9.1747926571558;
        Thu, 22 May 2025 08:09:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbVvSMIebTkeQbAVUwqeqJX7z9XwZxFk/FRvDNQuJYn/rrDTOUl3Z7yNgTaJEQuswHZtywSQ==
X-Received: by 2002:a05:620a:268c:b0:7c9:256a:953 with SMTP id af79cd13be357-7cd46731135mr1464767985a.9.1747926571210;
        Thu, 22 May 2025 08:09:31 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60284aeb666sm578997a12.60.2025.05.22.08.09.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 08:09:30 -0700 (PDT)
Message-ID: <423565b7-6b11-40bc-accf-902e80314300@oss.qualcomm.com>
Date: Thu, 22 May 2025 17:09:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 06/10] phy: qcom: Add M31 based eUSB2 PHY driver
To: Song Xue <quic_songxue@quicinc.com>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
 <20250421-sm8750_usb_master-v5-6-25c79ed01d02@oss.qualcomm.com>
 <7f82b59d-f1c0-44ad-a623-3dfb86c95c7e@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <7f82b59d-f1c0-44ad-a623-3dfb86c95c7e@quicinc.com>
X-Authority-Analysis: v=2.4 cv=V9990fni c=1 sm=1 tr=0 ts=682f3e2c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=yVuqqs4s3M2hehkgkIQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: UQaX1Js0sPi9xrNcM75iibE-iiO6kHkX
X-Proofpoint-GUID: UQaX1Js0sPi9xrNcM75iibE-iiO6kHkX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDE1NCBTYWx0ZWRfXw183SCOn0fD+
 N8R01JwZp53TWxc1RQaKFKU8JyIm9IstEBBh3Bj54+Nw+gsEAZKGZQq5JYMXtRTAKOjC7LlwUac
 9AVWlLPsMWZ2w9wpfCWJk03NBqtA5UHh90yhAsFQeYoYAJ+KRPfHwXaSjoeG7ZWwzMe0c7uVPeK
 tG9w6sT3bRHrVK6dmQvef475HrDTPW9qzNbGhjIgIUiZ4JXQM7a2oI+2T/t/176dG9ZcNHLn63Y
 eyU9EPv4cvT24M+Vq87zMDZdDV3G4lsOownkXC+9YP4NJnZk2sKIWknoJ+XeyhzDmWJ+D5Tkxx/
 3XTCbkYrNV/eb/7MiNZTJimno4ELIiD2VsUWlKsnnaWnQWtEZPXF3RzleO8Yf9dz6qIqRFTEfzv
 LQYW25C76Dl43zHcpKWptGy9zAPbyizlTW1mh6+hnnUIpoL7D2hW5NzuwN+Iv/K92FrwAzCJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_07,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 bulkscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 spamscore=0 phishscore=0 suspectscore=0
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505220154
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_080934_823484_140DF847 
X-CRM114-Status: GOOD (  12.91  )
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

T24gNS8yMi8yNSAxMjo1NiBQTSwgU29uZyBYdWUgd3JvdGU6Cj4gCj4gCj4gT24gNC8yMi8yMDI1
IDY6MDAgQU0sIE1lbG9keSBPbHZlcmEgd3JvdGU6Cj4+IEZyb206IFdlc2xleSBDaGVuZyA8cXVp
Y193Y2hlbmdAcXVpY2luYy5jb20+Cj4+Cj4+IFNNODc1MCB1dGlsaXplcyBhbiBlVVNCMiBQSFkg
ZnJvbSBNMzEuwqAgQWRkIHRoZSBpbml0aWFsaXphdGlvbgo+PiBzZXF1ZW5jZXMgdG8gYnJpbmcg
aXQgb3V0IG9mIHJlc2V0IGFuZCBpbnRvIGFuIG9wZXJhdGlvbmFsIHN0YXRlLsKgIFRoaXMKPj4g
ZGlmZmVycyB0byB0aGUgTTMxIFVTQiBkcml2ZXIsIGluIHRoYXQgdGhlIE0zMSBlVVNCMiBkcml2
ZXIgd2lsbAo+PiByZXF1aXJlIGEgY29ubmVjdGlvbiB0byBhbiBlVVNCMiByZXBlYXRlci7CoCBU
aGlzIFBIWSBkcml2ZXIgd2lsbCBoYW5kbGUKPj4gdGhlIGluaXRpYWxpemF0aW9uIG9mIHRoZSBh
c3NvY2lhdGVkIGVVU0IyIHJlcGVhdGVyIHdoZW4gcmVxdWlyZWQuCj4+Cj4+IFJldmlld2VkLWJ5
OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+Cj4+
IFNpZ25lZC1vZmYtYnk6IFdlc2xleSBDaGVuZyA8cXVpY193Y2hlbmdAcXVpY2luYy5jb20+Cj4+
IFNpZ25lZC1vZmYtYnk6IE1lbG9keSBPbHZlcmEgPG1lbG9keS5vbHZlcmFAb3NzLnF1YWxjb21t
LmNvbT4KPj4gLS0tCgpbLi4uXQoKPj4gK3N0YXRpYyBpbnQgbTMxZXVzYjJfcGh5X3dyaXRlX3Jl
YWRiYWNrKHZvaWQgX19pb21lbSAqYmFzZSwgdTMyIG9mZnNldCwKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHUzMiBtYXNrLCB1MzIgdmFsKQo+PiArewo+
PiArwqDCoMKgIHUzMiB3cml0ZV92YWw7Cj4+ICvCoMKgwqAgdTMyIHRtcDsKPj4gKwo+PiArwqDC
oMKgIHRtcCA9IHJlYWRsX3JlbGF4ZWQoYmFzZSArIG9mZnNldCk7Cj4+ICvCoMKgwqAgdG1wICY9
IH5tYXNrOwo+PiArwqDCoMKgIHdyaXRlX3ZhbCA9IHRtcCB8IHZhbDsKPj4gKwo+PiArwqDCoMKg
IHdyaXRlbF9yZWxheGVkKHdyaXRlX3ZhbCwgYmFzZSArIG9mZnNldCk7Cj4+ICsKPj4gK8KgwqDC
oCB0bXAgPSByZWFkbF9yZWxheGVkKGJhc2UgKyBvZmZzZXQpOwo+IGlzIGl0IGJldHRlciB0byB1
c2UgInJlYWRsIiB3aGljaCBjYW4gZ3VhcmFudGVlIHdyaXRlIHZpc2liaWxpdHk/CgpsZXQncyB1
c2Ugbm9uLXJlbGF4ZWQgdG8gc2F2ZSB0aGUgbWVhbmluZ2xlc3MgZGlzY3Vzc2lvbiBmcm9tIGRy
YWdnaW5nCm9uLCBpbiBmaWdodCBmb3Igd2hhdCBpcyBsaXRlcmFsbHkgYSBjb3VwbGUgbmFub3Nl
Y29uZHMgZWFjaCBib290CgpLb25yYWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
