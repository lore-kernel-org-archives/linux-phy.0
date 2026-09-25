Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7E70C9830D
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 04:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YiMET4fjk3SpGnJTO1R6kaGKyTZcj2oZTDcvK4VA19w=; b=nQBYDvsuohVLBv
	D9AM6EJHU34smCvV3wy5jDNzh1KUhuEByFXTaEkz2oeA0trRrEzp4dj8Ng1ZtNs5UxMMyByTYm0Vl
	PbePfXC9FfNqWXwUk/h7mYV7fct8K2SD33FcYD+rXK+BzZIgtIAR7gzpzXd/qL8H+vnxqxHkVbug8
	Qcn8eyw7Z0eg2OLmJQ0iX3//QT8H04+coQ9D49ZR46UBJ6f5Bu70ywgCVYPeXIN7SMpjlAT6JzJlf
	kWl07/S45AdEDl2gDnexHnY9Ij9amyhD0WmXqvdkV45U70cyV6XAVgIdUsw5H5ivXjJlzZBAKWvo7
	SfeKADrKE5lXc5G0zsNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9xEv-0000000Cb6U-19Kb;
	Fri, 25 Sep 2026 04:08:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9xEs-0000000Cb64-2G87
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 04:08:47 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68P1l5Tt3885440
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 04:08:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yC18zP13i2KmpC/DV5boNOGnrL3YTVpI80ZH1XUdZTQ=; b=AmuYVbRVJXy5sSo4
	UbuJgB+9khPaiVd0aePcJSbRgHYrJ/sjsYXcbNKSxCkGndfEzCKU3Tst4sM4eN0x
	MZMngQbHIx7743lf5fw5i28pu1d27guytyrqpvUr3VvD8oJHaWa89Osaarb/Gnl8
	aG+OyANgooxpiYhIdWKeoYo6vwSocvyot+TYXDMsfKFr4jkcPUQs3kWZ7H7Qif8Y
	DBeWWcDuZAdCBfYKyBUFgqxevSxVr4R+ZDqEKjTAB6c3B25zXifseRG1+Mje/68o
	3cF+bYK1ZuZuVfQiGFKS9f82D44fkfvF8a0L4g3I3oxhcPqTlZyibquqZnu45e77
	cfAeCw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gw46535d5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 04:08:44 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-334f782d1abso1851697eec.0
        for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 21:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790309324; x=1790914124; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yC18zP13i2KmpC/DV5boNOGnrL3YTVpI80ZH1XUdZTQ=;
        b=crdaN9gLOdQPvx5I3ZmiIBY3DYt1UDcBBo6bc5GBb9bADqQX4JcH/ZvGUfiTmki83x
         zJcjyUR6TgpyRVWBuuwDHvcbweuyLsxo0sL8eHifSBIS/WTGOR0TLS50SRnJxwiyCWb9
         z6eOs03+OrRcp9t8FUlXqlS5qNkkP5WUbADVT44kGCuPT7e1xMJfBSFEdtv2UITLpH5C
         eNClp6AXziBPa74ea8XKQ35w5DLb/dMwz8D78drQsH7I0aC2REKOUYY76xm0/PKX55le
         cKA/kIh++LZrUqLPArhEzdU5XG19R3MFfTaia1RB7lV+bPNjtM06efrNEVVL/4ZuhfXZ
         uMXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790309324; x=1790914124;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yC18zP13i2KmpC/DV5boNOGnrL3YTVpI80ZH1XUdZTQ=;
        b=B++6gJgGRghah3RQ14oKd8DZ35e0ZqC5/1bRXHmaOZw4PbxXc4TpeVgBmpV0Tw1nL6
         7clT0T3w/6NXIpL+agIG/3x1zYlupJuxqk17JcelPM1jq3wsSfHQxQDCt7lnYecX7Mtb
         JTOzg04eghmAp5lY5menVm858ChyKhI7zJcmYlfL/1IEIlpOQurdjWdecjAYsnxUsxoR
         onzwK+XHKVAvP5c3rtklBFIxt7YreNHWzJs+uuMDKyqdQvP7Pm1Lmx5n//iAgXRcmcHE
         4kU6KV/7iaSieFGzvT3YaLqA0NXy5fdrdP1DONAiUyVOI36DggkWOiwq/sJD1EUnlak+
         jxhw==
X-Forwarded-Encrypted: i=1; AKwUvBwRIYz5rnYIFmVYwlGvWHP+ivLZQGojR8Sa5AVXDZO1T0xr5K0YznTsMlec+RCm8n4R1f3uZ/TI9Hk=@lists.infradead.org
X-Gm-Message-State: AFuF++kjbdpOwfz0+EW/myTrvdzAsJEWmRpsVk4rajKaMUP7WwodS6Et
	sx5OtAmAIZK8tAOxCCcFn0765YYHIOvW9J93idxkispMNPO9ZiuHxeuN0q3xgVEMtMtXAs+PSGN
	JZqYQYwHzuoZGkbNpq/L769b6SGMwYuBGaa56tQBM/ZKWB0F96o7MwaJ0jpSKfnMpuwPB
X-Gm-Gg: AYBFou0NUp6I9/qw11jeh4Srehxka+W9ECXh2J3MJWRyqIN4QpbsWk1pdckTAYAXA+4
	jgid95eAoWDIYCCIHKfffa0ypNAbGp3BNHKA8zoMyqFA8KB/8WVIGPiYaWI8bu9Ilp5CtPlmd3X
	pJHbhq9Wu3bCw8ubUOpkqBNs18qgA3i13/a2AFZPig0qzS7/qTzLoimijVc+ZvLvBtfBLI+vndr
	xuzOu3MSdBWPEp7j4W0jx1T7mZ6tzhYGZdxZ9GFpvbocpOi53NtVPBfhoDfYRNChwae0cxCeWvD
	HYbxMdNfc8/+X+qKJQjIfk5/f+WVAZy9vr410lq+FBlmMMu9LuSrUZ4sIDi6FIW3tWzVXm1c21E
	PC1JD4u5pr1Z1tKtabOnqjTGWlytV+jac
X-Received: by 2002:a05:7300:818e:b0:327:affc:b506 with SMTP id 5a478bee46e88-34004e839e1mr5134611eec.15.1790309323429;
        Thu, 24 Sep 2026 21:08:43 -0700 (PDT)
X-Received: by 2002:a05:7300:818e:b0:327:affc:b506 with SMTP id 5a478bee46e88-34004e839e1mr5134580eec.15.1790309322832;
        Thu, 24 Sep 2026 21:08:42 -0700 (PDT)
Received: from [10.218.42.145] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3413fc2413dsm2812641eec.0.2026.09.24.21.08.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2026 21:08:42 -0700 (PDT)
Message-ID: <050f7d22-48a2-4114-babf-7cf21c4bc08b@oss.qualcomm.com>
Date: Fri, 25 Sep 2026 09:38:35 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/6] dt-bindings: phy: qcom: add Nord QMP PCIe PHY
 binding
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, shengchao.guo@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
 <20260921-nord-v4-1-ed05c6e09240@oss.qualcomm.com>
 <20260924-lumpy-robust-fulmar-1bfbe0@quoll>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20260924-lumpy-robust-fulmar-1bfbe0@quoll>
X-Authority-Analysis: v=2.4 cv=Wrq+otfv c=1 sm=1 tr=0 ts=6ab5f3cc cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=l-6eX-iZw65OgPShCm0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: qEJmjkVFmcF_yMkuFzVyqqq3v28F1K2E
X-Proofpoint-GUID: qEJmjkVFmcF_yMkuFzVyqqq3v28F1K2E
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI1MDAxNiBTYWx0ZWRfX3ymAhF/BpWhy
 SDU+kDIEFhP9hv/Df4YUwgRJfZegQohR0fQuXb+74YRbwGSDulyKj6A8indJmpLVyWa5s5tRxVl
 1yqObXeWGFNGB/Xc6Foeg6HXtoq9K7JV3orZsSCkNN638hxzxgsPbLC5+2fli00K/Ap7ZvvUbh4
 PD8QbaDY99kDr+2FN+9iHHHHics4s7G0uSGJ2SbrKdj7axD60lPAWvgO3TAXwAG763w1yI5I8YI
 ONNwyXXUDq3M7eLnMgZW6hEcvKsZLYcszgdwOn+8w+9JoI/9U2Ntdk1d3y2bvo+KGA5azI8wVZI
 5WLBZqD+sPKnIWu06gdMHqv3e/XkQ29uH3V7YpW4vfsJR8mWzigfNvC5gmgp0nTjIidMor21tN9
 tbkZkDyQdP/2IFxVKvVd9bHqZ0W4Oi9az7C8O+fgc/ezyX40YwhyPPvi1X08rVqAefRAU707aOa
 +zIquYUYm+KComW8hcg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI1MDAxNiBTYWx0ZWRfXxkjTuMWEgo7N
 UlNXhPWzQAaLvt8eGQ30XUx+udwzQEnwilWepVEuXHw2ztqihE1BdyoNa9agcZjJLiTjx7T4N70
 5rU899zksg255I2ibRo48cQSgxU51H0=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-25_01,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609250016
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_210846_720277_9B2975D1 
X-CRM114-Status: GOOD (  16.31  )
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

CgpPbiA5LzI0LzIwMjYgNjo1MiBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiBN
b24sIFNlcCAyMSwgMjAyNiBhdCAxMTowNzowOUFNICswNTMwLCBLcmlzaG5hIENoYWl0YW55YSBD
aHVuZHJ1IHdyb3RlOgo+PiArCj4+ICsgIHZkZGEtcGxsLWQtc3VwcGx5OiB0cnVlCj4+ICsKPj4g
KyAgcWNvbSxsaW5rLW1vZGU6Cj4+ICsgICAgZGVzY3JpcHRpb246Cj4+ICsgICAgICBSZWZlcmVu
Y2UgdG8gdGhlIFRDU1Igc3lzY29uIHJlZ2lzdGVyIGNvbnRhaW5pbmcgdGhlIFBDSWUgbGluayBt
b2RlCj4+ICsgICAgICBzZWxlY3RlZCBieSBmaXJtd2FyZS4gVGhlIHByb3BlcnR5IGNvbnNpc3Rz
IG9mIHRoZSBUQ1NSIHN5c2Nvbgo+PiArICAgICAgcGhhbmRsZSBmb2xsb3dlZCBieSB0aGUgb2Zm
c2V0IG9mIHRoZSBUQ1NSX1BDSUVfTElOS19DT05GSUdfTU9ERQo+PiArICAgICAgcmVnaXN0ZXIu
Cj4+ICsgICAgICBUaGUgcmVnaXN0ZXIgdmFsdWUgc2VsZWN0cyBvbmUgb2YgdGhlc2UgdG9wb2xv
Z2llcy4KPj4gKyAgICAgICAgMCAoUU1QX1BDSUVfTk9SRF9NT0RFX1gxNikgICAgICAgICDigJQg
YWxsIHBvcnRzIGNvbWJpbmVkIGFzIG9uZSB4MTYgUEhZCj4+ICsgICAgICAgIDEgKFFNUF9QQ0lF
X05PUkRfTU9ERV9YOF9YOCkgICAgICAg4oCUIHBvcnQgQSBhcyB4OCBhbmQgcG9ydHMgQitDK0Qg
YXMgeDgKPj4gKyAgICAgICAgMiAoUU1QX1BDSUVfTk9SRF9NT0RFX1g4X1g0X1g0KSAgICDigJQg
cG9ydCBBIGFzIHg4LCBwb3J0IEIgYXMgeDQsIGFuZCBwb3J0cyBDK0QgYXMgeDQKPj4gKyAgICAg
ICAgMyAoUU1QX1BDSUVfTk9SRF9NT0RFX1g4X1g0X1gyX1gyKSDigJQgcG9ydCBBIGFzIHg4LCBw
b3J0IEIgYXMgeDQsIGFuZCBwb3J0cyBDIGFuZCBEIGFzIHgyCj4gU2FtZSBxdWVzdGlvbiBhcyBs
YXN0IHRpbWUuIHBoeS1jZWxscyB0ZWxscyB3aGljaCBtb2RlIHlvdSBhcmUgaGVyZS4KPiBUaGlz
IGlzIGR1cGxpY2F0aW5nIGl0IGFuZCB0aGUgcmVnaXN0ZXIgdmFsdWUgQ0FOTk9UIGNob29zZSB0
aGUKPiB0b3BvbG9neS4gSWYgaXQgZG9lcywgdGhlbiBwaHktY2VsbHMgc2hvdWxkIGJlIDAgYXMg
dG9wb2xvZ3kgaXMgZGVmaW5lZAo+IGJ5IGhhcmR3YXJlIGFscmVhZHksIG5vPwpwaHktY2VsbHMg
ZG9lcyBub3QgZGVzY3JpYmUgdGhlIHRvcG9sb2d5LiBUaGUgUEhZIGFyZ3VtZW50IGlzIG9ubHnC
oHVzZWQgYnkgdGhlClBDSWUgY29udHJvbGxlciB0byBpZGVudGlmeSB0aGUgUEhZIGluc3RhbmNl
IGFzc29jaWF0ZWQgd2l0aMKgdGhhdCBjb250cm9sbGVyCihmb3IgZXhhbXBsZSwgcGh5cyA9IDwm
cGNpZV9waHkgMj4gc2VsZWN0cyBQSFkgaW5zdGFuY2UgMikuCgpUaGUgcWNvbSxsaW5rLW1vZGUg
cHJvcGVydHkgc2VydmVzIGEgZGlmZmVyZW50IHB1cnBvc2UuIEl0IHByb3ZpZGVzwqBhY2Nlc3Mg
dG8KdGhlIGZpcm13YXJlLXByb2dyYW1tZWQgVENTUl9QQ0lFX0xJTktfQ09ORklHX01PREUgcmVn
aXN0ZXIsIHdoaWNoIGRlc2NyaWJlcwp0aGUgZ2xvYmFsIGxhbmUgcGFydGl0aW9uaW5nICh4MTYs
IHg4K3g4LCB4OCt4NCt4NCwgeDgreDQreDIreDIsIGV0Yy4pLgoKwqAgLSBwaHktY2VsbHMgaWRl
bnRpZmllcyB3aGljaCBQSFkgaW5zdGFuY2UgYSBjb250cm9sbGVyIGlzIHVzaW5nLgrCoCAtIHFj
b20sbGluay1tb2RlIHJlcG9ydHMgdGhlIG92ZXJhbGwgdG9wb2xvZ3kgc2VsZWN0ZWQgYnkgZmly
bXdhcmUuCgotIEtyaXNobmEgQ2hhaXRhbnlhLgo+PiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVz
LnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUtYXJyYXkKPj4gKyAgICBpdGVtczoKPj4gKyAgICAg
IC0gaXRlbXM6Cj4+ICsgICAgICAgICAgLSBkZXNjcmlwdGlvbjogUGhhbmRsZSBvZiB0aGUgVENT
UiBzeXNjb24KPj4gKyAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBPZmZzZXQgb2YgVENTUl9QQ0lF
X0xJTktfQ09ORklHX01PREUgcmVnaXN0ZXIKPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4K
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
