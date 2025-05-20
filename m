Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B288DC3ABDD
	for <linux-phy@archiver.kernel.org>; Tue, 20 May 2025 11:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EBP4yoSx5qZqaTe0UyeOrdT4CqeIp/IoubTZAfY64+A=; b=d3ZcypG8WZUDz0
	zjCh4jhfVuIvF6LIhJSeOccHV682s6WmkDMMG/Fr9VDnQqsbFGTMKD319wesT3ACQWHcdI3AquH26
	L6RLUEhJp0wXGbqTg9/5lD+Ab54bd0ySUWM7Be3o5DSSHgkXm3DeXTvl4oo1N2vgRbcmZo0kd0fuH
	1pPthxrqnHWmowcXf9mkOUjh/Tx9R/dZ2CFtb5N8OSQiwjO3JXPazswqra6zwaqXHMDPztzKEZMnY
	XtqLhPp2unBnQdfW7OG/KevjLdjmyB8BtYT2YgIer8it+Rw3VXoyFND66wUh3zuEMsA1n8pVAmZD8
	uYZR6s3OW/M0FJjrY6Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHKxf-0000000Caw9-1e4M;
	Tue, 20 May 2025 11:16:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHKkm-0000000CV5o-0i3m
	for linux-phy@lists.infradead.org;
	Tue, 20 May 2025 11:03:25 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54K70FAd003036
	for <linux-phy@lists.infradead.org>; Tue, 20 May 2025 11:03:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HScz0u+Llm93qijaunpm9s3ySMN/5Pt+kU5sMHKjuGE=; b=e0YIMzu0M/p3LryV
	zXREBg6/u1ASGZsH/hYYEt06tH/XHECsh/OF5v//CNfuWDGbHhQDE4x961grjHDm
	RfU/wlP9E/MJiAa7xIR7yNGMp0yE14BrHijFARg3v/KwNX78Bup8b3jRmuc/+G8Y
	9uEObGdFQnfRUzlvIVImOGRc3sLbG17OqDxQXkQeMb8nj71ZjUBnAkLroDqGSDeL
	KmHCN09mgaWDkcuxG67xDUWEyEjW+1RyuWZwLn2ZS1oNh9o0OOwR8cUQ/DXByqDb
	AXIvMwgWJMGXvG/1pEoS73sjNACkWnC5cuR9wwQ1kouV73eU/zeEcbfjEnqdDG5X
	huiMJw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46r1atksua-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 May 2025 11:03:22 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5841ae28eso149932985a.1
        for <linux-phy@lists.infradead.org>; Tue, 20 May 2025 04:03:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747739002; x=1748343802;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HScz0u+Llm93qijaunpm9s3ySMN/5Pt+kU5sMHKjuGE=;
        b=Urth66Vq1B/D5F0Q+XtwWSD4RJ5oc1e50UuLBSusJRkLovVOh5w4Cca5nFFFUA4Rtl
         Dtazqq+CDd7CG8b1RKBMoLCYZAM7WG6k7adKeIgAwD7u3x66ebho0zIx8mdp4rAV2scJ
         lObi+d1XqO4rhg2EpYXHLrA6U04m7rM5GRLF/RDyCGzcKECRspPi8FUcodIzYZKxDyqP
         57y41BFtmNaOnHhfA5LQkNQFuub+0AOxCHl+BRgcjX66pJuKAFlvyc/r8TpoN7PF6OYL
         E8gYDIahmuSwQVmtmONZNCfCzWefMYBFCXq3XIVNRM7bNODRGDjZZsTSTPsa0xGd3KwP
         ZFVw==
X-Forwarded-Encrypted: i=1; AJvYcCW+4s1D0+SIMYk9ieXcsrodxCXsMZkOUPeuyXy/oQvgMd3GVywGQNI5YXCJrIWbI6mQD+E9UqLaUsA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7cBZT7g0lWz37XDDVQ8YST6b96K9trbz5wReDq2hn9E8NaynH
	ZLYFQ+0ExJ3K6xiRcfqtwCFpaDFRgh+CPUIaIJzVxJCrXDVLjq8qdTYa1N5Fb8c2J699xHea0QV
	R7YA5vKps8BSaUieYcDldATd7oSmOvBhfkUGQnfmIIxLMUlUyskYKukIhznW82EYDnJIG
X-Gm-Gg: ASbGncvTe7CKTig4zOgS1LywWNc7zt6BqjSuKA9SdBia5Cpkss8k4ergMhRDZ1iAbAQ
	xpks+oIUzfOFSp5WhWgN6yJeyL9mFvvwky82PNwlNd5b2cxtEA7VnH/W+Rx6CJ5kxhGoGrde81i
	ZJTQkAsON4lyjl0Sv52bTOEFyfvmp5JDOpwD13oJ5dmqAwMTuXJTAK+bk4oM3Iyi3zNIAnetu5s
	p64BFrz8Ny19JDZ2+7tDBWmxJkVdynP/N1sKs/6AeEbJuAZHyMYSK5pzs1wGnYKsDeqCpBkG4U6
	lqwl3mn/+n/FmvnxgvEqtLar2+26Hz8p64B0dhkfcQdx5Jf3CFdVA2zG39NRSm4svA==
X-Received: by 2002:a05:620a:1b8a:b0:7c3:cccc:8790 with SMTP id af79cd13be357-7cd4672f622mr1130275185a.5.1747739002119;
        Tue, 20 May 2025 04:03:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEL3+EcEBMCFUs5rn/uE71zSGiY5smfjbdn6K4KuMrGJ4AUyjWUYi3XwmVrvc3D2YpXLTwxvw==
X-Received: by 2002:a05:620a:1b8a:b0:7c3:cccc:8790 with SMTP id af79cd13be357-7cd4672f622mr1130271485a.5.1747739001540;
        Tue, 20 May 2025 04:03:21 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6016d193ebdsm6673791a12.57.2025.05.20.04.03.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 04:03:21 -0700 (PDT)
Message-ID: <8b3ab2b6-4180-4560-991e-41780658cb52@oss.qualcomm.com>
Date: Tue, 20 May 2025 13:03:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] phy: qcom: qmp-pcie: Update PHY settings for
 SA8775P
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>
References: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
 <20250514-update_phy-v2-1-d4f319221474@quicinc.com>
 <8e900d20-009b-4cc7-ba1d-52582e414402@oss.qualcomm.com>
 <CAMyL0qPmMVt1Wd4fkQsf_pt8ggJhpR=u7GbXtifczK4Xp8yRJA@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAMyL0qPmMVt1Wd4fkQsf_pt8ggJhpR=u7GbXtifczK4Xp8yRJA@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=OfqYDgTY c=1 sm=1 tr=0 ts=682c617b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=KnjBw1EjzzqmsG5sd9YA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: WeW6O9MZ536xnsoIJBzOspxZwoN6H939
X-Proofpoint-GUID: WeW6O9MZ536xnsoIJBzOspxZwoN6H939
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDA5MCBTYWx0ZWRfX2mr/VjyxrXJE
 qzGdV6hKeO3JLpGvhT5uDWP5PtVdV26HEZwmCl3HnXVBUohoSPDCa8W1Ib9DmokxuTSpGMTpQit
 h/Vz7jCfcSfosQuRfKMXSE6otmbjvV32Pbpmq62qkfvwsKvarwRSJZcdalsDgu13VWR+ynuzlEf
 UA2BEVhs68YxyOEe9AOsPytjTCYdTHkajtuq4xmu4HcEYZtvlq6xRa0dxjwYyGl1T/yQSEmadvP
 GNO78eex+kgpoxbPHy1ICv0vqn9IwAHuK1udMxZRIfQ1+5/L2BfAniIGAlrsd1y4mCA8iYtCz1z
 0D+7/HkG7TbxzBdIw0kR3BkQaBx+PohyCQgTSVLtYDj8wglNLsBfewO9VxhtyoNfdBw3R9w7Sga
 f3QnZpHGCJuazH1WS+dgd10MxFAA8a8PMyclRvd0EVDksgx29wGUFHHcAr6EdKPh57STqjBl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_04,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 mlxscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 priorityscore=1501 spamscore=0 mlxlogscore=610
 clxscore=1015 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505200090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_040324_354947_6D427C94 
X-CRM114-Status: GOOD (  14.21  )
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

T24gNS8xOS8yNSAyOjI1IFBNLCBNcmlubWF5IFNhcmthciB3cm90ZToKPiBPbiBTYXQsIE1heSAx
NywgMjAyNSBhdCAxMTo0NuKAr1BNIEtvbnJhZCBEeWJjaW8gPAo+IGtvbnJhZC5keWJjaW9Ab3Nz
LnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIDUvMTQvMjUgMTozNyBQTSwgTXJpbm1heSBT
YXJrYXIgd3JvdGU6Cj4+PiBGcm9tOiBNcmlubWF5IFNhcmthciA8bXJpbm1heS5zYXJrYXJAb3Nz
LnF1YWxjb21tLmNvbT4KPj4+Cj4+PiBNYWtlIGNoYW5nZXMgdG8gdXBkYXRlIHRoZSBQSFkgc2V0
dGluZ3MgdG8gYWxpZ24gd2l0aCB0aGUgbGF0ZXN0Cj4+PiBQQ0llIFBIWSBIYXJkd2FyZSBQcm9n
cmFtbWluZyBHdWlkZSBmb3IgYm90aCBQQ0llIGNvbnRyb2xsZXJzCj4+PiBvbiB0aGUgU0E4Nzc1
UCBwbGF0Zm9ybS4KPj4+Cj4+PiBBZGQgdGhlIGxuX3NocmQgcmVnaW9uIGZvciBTQTg3NzVQLCBp
bmNvcnBvcmF0aW5nIG5ldyByZWdpc3Rlcgo+Pj4gd3JpdGVzIGFzIHNwZWNpZmllZCBpbiB0aGUg
dXBkYXRlZCBIYXJkd2FyZSBQcm9ncmFtbWluZyBHdWlkZS4KPj4+Cj4+PiBVcGRhdGUgcGNzIHRh
YmxlIGZvciBRQ1M4MzAwLCBzaW5jZSBib3RoIFFDUzgzMDAgYW5kIFNBODc3NVAgYXJlCj4+PiBj
bG9zZWx5IHJlbGF0ZWQgYW5kIHNoYXJlIHNhbWUgcGNzIHNldHRpbmdzLgo+Pj4KPj4+IFNpZ25l
ZC1vZmYtYnk6IE1yaW5tYXkgU2Fya2FyIDxtcmlubWF5LnNhcmthckBvc3MucXVhbGNvbW0uY29t
Pgo+Pj4gLS0tCj4+Cj4+IFNvIEkgdG9vayBhIGNsb3NlciBsb29rIGFuZCBwbGVhc2UgcmUtdmFs
aWRhdGUgdGhlIGNoYW5nZXMsIEkKPj4gY2hlY2tlZCBvbmUgd3JpdGUgcmFuZG9tbHkgYW5kIGl0
IHR1cm5lZCBvdXQgdG8gYmUgaW5jb25zaXN0ZW50Cj4+Cj4+IFsuLi5dCj4+Cj4+Cj4+PiAtICAg
ICBRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjVfMjBfUlhfVkdBX0NBTF9NQU5fVkFMLCAweDA4
KSwKPj4+IC0gICAgIFFNUF9QSFlfSU5JVF9DRkcoUVNFUkRFU19WNV8yMF9SWF9SWF9FUVVfQURB
UFRPUl9DTlRSTDQsIDB4MGIpLAo+Pj4gKyAgICAgUU1QX1BIWV9JTklUX0NGRyhRU0VSREVTX1Y1
XzIwX1JYX1ZHQV9DQUxfTUFOX1ZBTCwgMHgwMyksCj4+Cj4+IF4gdGhpcyBzaG91bGQgYmUgMHgw
YSBhY2NvcmRpbmcgdG8gcmVmZXJlbmNlIHYxLjE5IGZvciBSQyBtb2RlCj4+Cj4gQXMgcGVyIHYx
LjE5IGZvciBTQTg3NzUgUkMgbW9kZSBJIGNhbiBzZWUgdGhlIHZhbHVlIGZvciB0aGlzIGlzIDB4
MDMgb25seS4KCkFoIHJpZ2h0LCB0aGUgZG9jcyBhcmUgc3RydWN0dXJlZCBpbiBhIGNvbmZ1c2lu
ZyB3YXkuLgoKS29ucmFkCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
