Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3116BC5B567
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 05:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4s5QFSk7EIybawvclsFqwvjY51kPF3bcQXLoyHJGrA=; b=pjJ3G+7qdrPodx
	dJBAC5HKO3w9L44ztsYB4n0ilcmFYY2xT49h7/Mt8/zTG/QtdJn12pMeT43eXC9LIEWj+znYPOqLF
	diVVDpbWQOXTpSkj5PrHecZUIAhdshe6PGJ7w9u6fnZTxdxQsUlgbeTdn9wgsP7FxsZFecdINGisG
	zHopPVRFSCYWO+7xzIuQauSLq4LWAhQUgf1Gv8/UIrl1tvOP5rE4/AU2BJd+y5rniabMccMYVMy/B
	FP+HPEHbYuz1E84JJlpllWYKek1SExMr43yByIjHwtZY7ctBWM68XHm1zqPVMBcXQjVZQYK7F5FoG
	BMlGBNmO66BVkzlSVJfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu1vw-0000000FTUM-14sW;
	Wed, 12 Aug 2026 05:55:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu1vt-0000000FTTy-1Q4I
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 05:55:22 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67C5iKGa2146933
	for <linux-phy@lists.infradead.org>; Wed, 12 Aug 2026 05:55:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kj5Fm3PrD2xHmK1fpjPQgyYteo7rmv7BUDtCA9Zvfic=; b=MlOOlowCzQ6Sgu2U
	jRWY2jlD/Z76Hf14T5g7XzheFm5cSdCIf4xCYRFAF9d8B6VQWazhxQeA/HgokyKf
	bUubgagLZe39OdCojqUBjLiigzc4NUB+CcfkpwJekYZDsxtN1yiDbMqaewtLz4mk
	/4fk4W4lo0ziF+PexVOoPhXkp1fdg/B4ccij/RKf4GSbvST3KEMDfbVvDiM+bayI
	6ELgY7xsGLak7gChHAHWmTGQWzFPdFWgbYV+ORDa4RH+GNGI9TEQUj8NyG7h+/td
	qPMvk5Wv+B284qZENPros14Qoq+ZCVKrNCBIhK+6luRxFYNITsNDYFiXzb2UptSA
	id2/Ng==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g049g3naq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 12 Aug 2026 05:55:20 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-38ce7fabf76so832197a91.2
        for <linux-phy@lists.infradead.org>; Tue, 11 Aug 2026 22:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786514120; x=1787118920; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kj5Fm3PrD2xHmK1fpjPQgyYteo7rmv7BUDtCA9Zvfic=;
        b=e3BR1rMJvlojFyLuqP1x6B0HIbDKgzTF6hKvPUc/xuP7h/WWRSQ1dNasSHEwmYpssV
         Fn/6zaTN0rGUuapjM5zwEwRcI0x1SICaQrOKPvccgoskFcWd7xstGBYLGBjOSSpcmUVn
         GPMvjTwtiv1dTw+35nKlKkEZ23PRHv9CSBD8NWyxIE08tSN+nPzynJi2MPKB8Xr1ax7j
         4T/e7G0r5BQWGLaBs0eBrkiECthxBc6QKeRyXSKI+JGkv7jBNnQ32mGqnFiyErKyucx4
         ZkFxlIUdgekbvhih0JuJ51+i3jT35WuJz68k1kSN0v+rvnIs6herJIqXiiJGe9sRDE0d
         tDKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786514120; x=1787118920;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kj5Fm3PrD2xHmK1fpjPQgyYteo7rmv7BUDtCA9Zvfic=;
        b=IAQvHQhrI0SrF9X8MeOYfH5QMUrkmegRSt6rU6ETya1Ax2ur1dP5nRlZBlJPAUOy2x
         GmRhvLDDCFsI+5kNpV/+oMY7EIJnQz3XxpCtfeTxXyWHlHxDtUXwwwKmPafBfDPmVyKp
         +lEtEBLJEbGSJN618FFzQUMqWzCCbwAfALRFuxH/BGACeyI+NMGzB3OJ6dgfT0Ada2a+
         KFmDoOLRBK6LD1D/v8Dx18BpwNSGm4nQbs5pwbmUQXNwAMDPAXI2vAHQxRk2Ef/3Xr0b
         ogvkTyi27F/KR3gk9LUvjXlW9n+xXc2tIYicGxXR2/+V1kod3PCBgDSj9H0WZTGCfHyZ
         io1Q==
X-Forwarded-Encrypted: i=1; AHgh+RqnsGYINblVdpbfwiPjBLRWZD6oJtAgAZBffwpp9tx4RefydpU8MsBEgatlYM3ZilMpCdI40Wx9mzY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyRvM/1NowFeZc+Nj9FTZr4WfmAF7x75dnzQ17L5fRmLZ5g3EJM
	c7s2tkTSHoI/Uy/HeXUYwpjBh7fh1UdKywZCsUjosQsnRz0fVcE8sjKHvJ52qHFQq4O3CFSl+4U
	pA3Wj9MNRaza1ZjR6EMgA1O54WPVWEMmtXKX3iQh/yYS/MC9DyWENkRgmgEKuEci6XULJ
X-Gm-Gg: AR+sD11bMOwSE4dQbQ4dBE+bvMA/TZNK4g9WOzFHqUHwT19r3Uc8JvFoInMoQdKx9l+
	1B52Q4qso76+kdBr8Mhsrp/2Otc29JLvbUI+/5Gygg8ogZoiVyrg5nTns80k4nR5TKvaTIskHAj
	5s3Nqooe4/4Zw0kvaRCYxYQmhJYXjvPNuzhah7vsuWv/+7bUY9hQNO/tKGiAln5ZlYoI1/74JXq
	XbGRDDcX2Qdn32HH76WWn32sRoktLikzBBA7vhizlW2fTkiaivSZGvIH9EEZ7m8Vye+wvsLYLxZ
	DUAPZGeFcjwqbBeuSv4yU8pUSzlKNVg1GHsQ6XNCK03fWr77g5Nut+/2QWLnvoV6NGTBU1sHwun
	R4zNkiSqhjsxXrUvRBinTzFdJL2E5kfWCOQ==
X-Received: by 2002:a17:90b:2d87:b0:38e:1497:af5b with SMTP id 98e67ed59e1d1-393013c41e8mr2796246a91.1.1786514119835;
        Tue, 11 Aug 2026 22:55:19 -0700 (PDT)
X-Received: by 2002:a17:90b:2d87:b0:38e:1497:af5b with SMTP id 98e67ed59e1d1-393013c41e8mr2796180a91.1.1786514119289;
        Tue, 11 Aug 2026 22:55:19 -0700 (PDT)
Received: from [10.218.18.194] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-392f8cffe2csm2208168a91.10.2026.08.11.22.55.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2026 22:55:18 -0700 (PDT)
Message-ID: <7a17da3d-c838-4877-8a62-5551dbdaa9e5@oss.qualcomm.com>
Date: Wed, 12 Aug 2026 11:25:12 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] dt-bindings: PCI: qcom: Document the Shikra PCIe
 Controller
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio
 <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
 <20260701-shikra-upstream-v1-2-e1a721eb8943@oss.qualcomm.com>
 <hf6szamduxopeuvkjkxxteqauirsgfq36pih7go2wf25o4zmv4@vhmhe3gyzgo5>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <hf6szamduxopeuvkjkxxteqauirsgfq36pih7go2wf25o4zmv4@vhmhe3gyzgo5>
X-Proofpoint-GUID: usyVVS7rDuqgt0BJKqJFyVdDpaIEdbCl
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEyMDA0NCBTYWx0ZWRfX8h/yjUyxfbLD
 1kWzQtKsjuA/uM6qgOOzbUwofTmOJ8YawUigFZAglXGH0oRCEOtgBaQLbmJR50tjitso2lp4gPF
 q6qGn6BvWa5DkIxx9B1rLFYKBhqJQMQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEyMDA0NCBTYWx0ZWRfX7WiwhD5dicW0
 D/N+aO3LNYl11z4ysjW7zM8Nr4DEuphtiNjscvC6aJ7JFtGT89rl5WCBNTOpJ4M58Y+VWZo88oD
 tvqQ8AXxWWJbW4NlWX+iBvX/hlJJrZNvYxmBE2FLraFlLs88Ciil77HqCZNjWceN4iJmQN3i4di
 m5RGpViFZTYfh0S09RfcOGe/rNmVWfjkowvUyGemlOTIe6suy9vUQDj9TXVVY0ohD1IK99M/8v+
 vZ9NHcH25A/kUxSe7rqkWGpCU4j++18Ri8izVElUKj1HBDOJi9Qr6TlfsLnn0gGALv9sjAUF3N8
 qUAWnH6Oumd8KpvtIDh4UaR+Vo/hSpOJqAvcPMIs1YZaAGCvV+zyGQOsXHMpQtJEru0Hy8iuUxD
 rSV9XshSSmGwptMgJ2slDxH8178nk0Q8An/HpzP1IodsBbBZ4OMXu6n/INviuQH5B7wpq+avfnJ
 +iGxGHw1Pq11zKWWGBA==
X-Proofpoint-ORIG-GUID: usyVVS7rDuqgt0BJKqJFyVdDpaIEdbCl
X-Authority-Analysis: v=2.4 cv=LIRWhpW9 c=1 sm=1 tr=0 ts=6a7c0ac8 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=LRpbSB15B1xe3DutT7MA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-12_01,2026-08-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 bulkscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608120044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_225521_390117_1F3D3C63 
X-CRM114-Status: GOOD (  18.38  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Ck9uIDcvNy8yMDI2IDExOjMxIEFNLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gT24g
V2VkLCBKdWwgMDEsIDIwMjYgYXQgMTI6MzI6NDRBTSArMDUzMCwgU3VzaHJ1dCBTaHJlZSBUcml2
ZWRpIHdyb3RlOgo+PiBBZGQgYSBkZWRpY2F0ZWQgc2NoZW1hIGZvciB0aGUgUENJZSBjb250cm9s
bGVyIGZvdW5kIG9uIHRoZSBTaGlrcmEKPj4gcGxhdGZvcm0uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IFN1c2hydXQgU2hyZWUgVHJpdmVkaSA8c3VzaHJ1dC50cml2ZWRpQG9zcy5xdWFsY29tbS5jb20+
Cj4+IC0tLQo+PiAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHNoaWtyYS1wY2ll
LnlhbWwgIHwgMjExICsrKysrKysrKysrKysrKysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAy
MTEgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3BjaS9xY29tLHNoaWtyYS1wY2llLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20sc2hpa3JhLXBjaWUueWFtbAo+PiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLmY5ZDFkYmE5ZGQyZQo+PiAtLS0gL2Rl
di9udWxsCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNv
bSxzaGlrcmEtcGNpZS55YW1sCj4+IEBAIC0wLDAgKzEsMjExIEBACj4+ICsjIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPj4gKyVZQU1MIDEu
Mgo+PiArLS0tCj4+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BjaS9xY29t
LHNoaWtyYS1wY2llLnlhbWwjCj4+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0
YS1zY2hlbWFzL2NvcmUueWFtbCMKPj4gKwo+PiArdGl0bGU6IFF1YWxjb21tIFNoaWtyYSBQQ0kg
RXhwcmVzcyBSb290IENvbXBsZXgKPj4gKwo+PiArbWFpbnRhaW5lcnM6Cj4+ICsgIC0gQmpvcm4g
QW5kZXJzc29uIDxhbmRlcnNzb25Aa2VybmVsLm9yZz4KPj4gKyAgLSBNYW5pdmFubmFuIFNhZGhh
c2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgo+PiArCj4+ICtkZXNjcmlw
dGlvbjoKPj4gKyAgUXVhbGNvbW0gU2hpa3JhIFNvQyAoYW5kIGNvbXBhdGlibGUpIFBDSWUgcm9v
dCBjb21wbGV4IGNvbnRyb2xsZXIgaXMgYmFzZWQgb24KPiBzL1BDSWUgcm9vdCBjb21wbGV4IGNv
bnRyb2xsZXIvUENJZSBSb290IENvbXBsZXgKQUNLCj4KPj4gKyAgdGhlIFN5bm9wc3lzIERlc2ln
bldhcmUgUENJZSBJUC4KPj4gKwo+PiArcHJvcGVydGllczoKPj4gKyAgY29tcGF0aWJsZToKPj4g
KyAgICBjb25zdDogcWNvbSxzaGlrcmEtcGNpZQo+PiArCj4+ICsgIHJlZzoKPj4gKyAgICBtaW5J
dGVtczogNQo+PiArICAgIG1heEl0ZW1zOiA2Cj4+ICsKPj4gKyAgcmVnLW5hbWVzOgo+PiArICAg
IG1pbkl0ZW1zOiA1Cj4+ICsgICAgaXRlbXM6Cj4+ICsgICAgICAtIGNvbnN0OiBwYXJmICMgUXVh
bGNvbW0gc3BlY2lmaWMgcmVnaXN0ZXJzCj4+ICsgICAgICAtIGNvbnN0OiBkYmkgIyBEZXNpZ25X
YXJlIFBDSWUgcmVnaXN0ZXJzCj4+ICsgICAgICAtIGNvbnN0OiBlbGJpICMgRXh0ZXJuYWwgbG9j
YWwgYnVzIGludGVyZmFjZSByZWdpc3RlcnMKPj4gKyAgICAgIC0gY29uc3Q6IGF0dSAjIEFUVSBh
ZGRyZXNzIHNwYWNlCj4+ICsgICAgICAtIGNvbnN0OiBjb25maWcgIyBQQ0llIGNvbmZpZ3VyYXRp
b24gc3BhY2UKPj4gKyAgICAgIC0gY29uc3Q6IG1oaSAjIE1ISSByZWdpc3RlcnMKPiBNSEkgaXMg
bm90IG9wdGlvbmFsLgpBQ0sKPgo+PiArCj4+ICsgIGNsb2NrczoKPj4gKyAgICBtaW5JdGVtczog
Nwo+PiArICAgIG1heEl0ZW1zOiA5Cj4+ICsKPj4gKyAgY2xvY2stbmFtZXM6Cj4+ICsgICAgbWlu
SXRlbXM6IDcKPj4gKyAgICBpdGVtczoKPj4gKyAgICAgIC0gY29uc3Q6IGF1eCAjIEF1eGlsaWFy
eSBjbG9jawo+PiArICAgICAgLSBjb25zdDogY2ZnICMgQ29uZmlndXJhdGlvbiBjbG9jawo+PiAr
ICAgICAgLSBjb25zdDogYnVzX21hc3RlciAjIE1hc3RlciBBWEkgY2xvY2sKPj4gKyAgICAgIC0g
Y29uc3Q6IGJ1c19zbGF2ZSAjIFNsYXZlIEFYSSBjbG9jawo+PiArICAgICAgLSBjb25zdDogc2xh
dmVfcTJhICMgU2xhdmUgUTJBIGNsb2NrCj4+ICsgICAgICAtIGNvbnN0OiBkZHJzc19tZW1ub2Nf
cGNpZSAjIFBDSWUgU0YgTUVNTk9DIGNsb2NrCj4+ICsgICAgICAtIGNvbnN0OiB0aWxlICMgUENJ
ZSB0aWxlIFNZUyBOb0MgY2xvY2sKPj4gKyAgICAgIC0gY29uc3Q6IHFtaXBfcGNpZV9haGIgIyBR
TUlQIFBDSWUgQUhCIGNsb2NrCj4gV2h5IG9wdGlvbmFsIGNsb2Nrcz8KQUNLCj4KPj4gKwo+PiAr
ICBpbnRlcnJ1cHRzOgo+PiArICAgIG1pbkl0ZW1zOiA4Cj4+ICsgICAgbWF4SXRlbXM6IDkKPj4g
Kwo+PiArICBpbnRlcnJ1cHQtbmFtZXM6Cj4+ICsgICAgbWluSXRlbXM6IDgKPj4gKyAgICBpdGVt
czoKPj4gKyAgICAgIC0gY29uc3Q6IG1zaTAKPj4gKyAgICAgIC0gY29uc3Q6IG1zaTEKPj4gKyAg
ICAgIC0gY29uc3Q6IG1zaTIKPj4gKyAgICAgIC0gY29uc3Q6IG1zaTMKPj4gKyAgICAgIC0gY29u
c3Q6IG1zaTQKPj4gKyAgICAgIC0gY29uc3Q6IG1zaTUKPj4gKyAgICAgIC0gY29uc3Q6IG1zaTYK
Pj4gKyAgICAgIC0gY29uc3Q6IG1zaTcKPj4gKyAgICAgIC0gY29uc3Q6IGdsb2JhbAo+IFNhbWUg
aGVyZSwgd2h5IGdsb2JhbCBpbnRlcnJ1cHQgaXMgb3B0aW9uYWw/CkFDSwo+Cj4+ICsKPj4gKyAg
cmVzZXRzOgo+PiArICAgIG1pbkl0ZW1zOiAxCj4+ICsgICAgbWF4SXRlbXM6IDIKPj4gKwo+PiAr
ICByZXNldC1uYW1lczoKPj4gKyAgICBtaW5JdGVtczogMQo+PiArICAgIGl0ZW1zOgo+PiArICAg
ICAgLSBjb25zdDogcGNpICMgUENJZSBjb3JlIHJlc2V0Cj4+ICsgICAgICAtIGNvbnN0OiBsaW5r
X2Rvd24gIyBQQ0llIGxpbmsgZG93biByZXNldAo+IFNhbWUgaGVyZS4KQUNLCj4KPj4gKwo+PiAr
cmVxdWlyZWQ6Cj4+ICsgIC0gcG93ZXItZG9tYWlucwo+PiArICAtIHJlc2V0cwo+PiArICAtIHJl
c2V0LW5hbWVzCj4+ICsKPj4gK2FsbE9mOgo+PiArICAtICRyZWY6IHFjb20scGNpZS1jb21tb24u
eWFtbCMKPj4gKwo+PiArdW5ldmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQo+PiArCj4+ICtleGFt
cGxlczoKPj4gKyAgLSB8Cj4+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3Fjb20s
ZGlzcGNjLXFjbTIyOTAuaD4KPj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svcWNv
bSxxY20yMjkwLWdwdWNjLmg+Cj4gV2hhdCBhcmUgdGhlc2UgaW5jbHVkZXMgZm9yPwpBQ0suIFdp
bGwgYmUgZml4ZWQgaW4gdjIuCj4KPj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2sv
cWNvbSxycG1jYy5oPgo+PiArCj4+ICsgICAgc29jIHsKPj4gKyAgICAgICAgI2FkZHJlc3MtY2Vs
bHMgPSA8Mj47Cj4+ICsgICAgICAgICNzaXplLWNlbGxzID0gPDI+Owo+PiArCj4gR2V0IHJpZCBv
ZiAnc29jJyBub2RlLgpJZiB3ZSByZW1vdmUgc29jIG5vZGUsIGR0LXNjaGVtYSB1c2VzIGFkZHJl
c3MtY2VsbHMgPSA8MT4sCnNpemUtY2VsbHPCoCA9IDwxPiBmb3IgZHQtYmluZGluZyBjaGVjayBh
bmQgdGhyb3dzIGVycm9ycy4KCkRvIHlvdSBzdWdnZXN0IGlnbm9yaW5nIHRob3NlIGVycm9ycyA/
Cj4KPj4gKyAgICAgICAgcGNpZUA0NWU4MDAwIHsKPj4gKyAgICAgICAgICBkZXZpY2VfdHlwZSA9
ICJwY2kiOwo+PiArICAgICAgICAgIGNvbXBhdGlibGUgPSAicWNvbSxzaGlrcmEtcGNpZSI7Cj4+
ICsgICAgICAgICAgcmVnID0gPDB4MCAweDA0NWU4MDAwIDB4MCAweDMwMDA+LAo+PiArICAgICAg
ICAgICAgICAgIDwweDAgMHg2MDAwMDAwMCAweDAgMHhmMWQ+LAo+PiArICAgICAgICAgICAgICAg
IDwweDAgMHg2MDAwMGYyMCAweDAgMHhhOD4sCj4+ICsgICAgICAgICAgICAgICAgPDB4MCAweDYw
MDAxMDAwIDB4MCAweDEwMDA+LAo+PiArICAgICAgICAgICAgICAgIDwweDAgMHg2MDEwMDAwMCAw
eDAgMHgxMDAwMDA+LAo+PiArICAgICAgICAgICAgICAgIDwweDAgMHgwNDVlYjAwMCAweDAgMHgx
MDAwPjsKPj4gKyAgICAgICAgICByZWctbmFtZXMgPSAicGFyZiIsCj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgImRiaSIsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgImVsYmkiLAo+PiArICAg
ICAgICAgICAgICAgICAgICAgICJhdHUiLAo+PiArICAgICAgICAgICAgICAgICAgICAgICJjb25m
aWciLAo+PiArICAgICAgICAgICAgICAgICAgICAgICJtaGkiOwo+PiArICAgICAgICAgICNhZGRy
ZXNzLWNlbGxzID0gPDM+Owo+PiArICAgICAgICAgICNzaXplLWNlbGxzID0gPDI+Owo+PiArICAg
ICAgICAgIHJhbmdlcyA9IDwweDAxMDAwMDAwIDB4MCAweDAwMDAwMDAwIDB4MCAweDYwMjAwMDAw
IDB4MCAweDEwMDAwMD4sCj4+ICsgICAgICAgICAgICAgICAgICAgPDB4MDIwMDAwMDAgMHgwIDB4
NjAzMDAwMDAgMHgwIDB4NjAzMDAwMDAgMHgwIDB4M2QwMDAwMD4sCj4+ICsgICAgICAgICAgICAg
ICAgICAgPDB4MDMwMDAwMDAgMHg0IDB4MDAwMDAwMDAgMHg0IDB4MDAwMDAwMDAgMHgzIDB4MDAw
MDAwMD47Cj4+ICsgICAgICAgICAgYnVzLXJhbmdlID0gPDB4MDAgMHhmZj47Cj4+ICsKPj4gKyAg
ICAgICAgICBsaW51eCxwY2ktZG9tYWluID0gPDA+Owo+PiArICAgICAgICAgIG51bS1sYW5lcyA9
IDwxPjsKPj4gKwo+PiArICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA0OTEgSVJRX1RZ
UEVfTEVWRUxfSElHSCAwPiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgPEdJQ19TUEkgNDky
IElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIDxHSUNf
U1BJIDQ5MyBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+LAo+PiArICAgICAgICAgICAgICAgICAgICAg
ICA8R0lDX1NQSSA0OTQgSVJRX1RZUEVfTEVWRUxfSElHSCAwPiwKPj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgPEdJQ19TUEkgNDk1IElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgIDxHSUNfU1BJIDQ5NiBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+LAo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICA8R0lDX1NQSSA0OTcgSVJRX1RZUEVfTEVWRUxfSElHSCAw
PiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgPEdJQ19TUEkgNDk4IElSUV9UWVBFX0xFVkVM
X0hJR0ggMD4sCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIDxHSUNfU1BJIDQ4OSBJUlFfVFlQ
RV9MRVZFTF9ISUdIIDA+Owo+PiArICAgICAgICAgIGludGVycnVwdC1uYW1lcyA9ICJtc2kwIiwK
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAibXNpMSIsCj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIm1zaTIiLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICJt
c2kzIiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAibXNpNCIsCj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIm1zaTUiLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICJtc2k2IiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAibXNpNyIsCj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgImdsb2JhbCI7Cj4+ICsKPj4gKyAgICAgICAgICBp
bnRlcnJ1cHQtbWFwID0gPDAgMCAwIDEgJmludGMgMCAwIDAgNDk5IElSUV9UWVBFX0xFVkVMX0hJ
R0g+LAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICA8MCAwIDAgMiAmaW50YyAwIDAgMCA1
MDAgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIDww
IDAgMCAzICZpbnRjIDAgMCAwIDUwMSBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgPDAgMCAwIDQgJmludGMgMCAwIDAgNTAyIElSUV9UWVBFX0xFVkVM
X0hJR0g+Owo+PiArICAgICAgICAgIGludGVycnVwdC1tYXAtbWFzayA9IDwwIDAgMCAweDc+Owo+
PiArICAgICAgICAgICNpbnRlcnJ1cHQtY2VsbHMgPSA8MT47Cj4+ICsKPj4gKyAgICAgICAgICBj
bG9ja3MgPSA8JmdjYyBHQ0NfUENJRV9BVVhfQ0xLPiwKPj4gKyAgICAgICAgICAgICAgICAgICA8
JmdjYyBHQ0NfUENJRV9DRkdfQUhCX0NMSz4sCj4+ICsgICAgICAgICAgICAgICAgICAgPCZnY2Mg
R0NDX1BDSUVfTVNUUl9BWElfQ0xLPiwKPj4gKyAgICAgICAgICAgICAgICAgICA8JmdjYyBHQ0Nf
UENJRV9TTFZfQVhJX0NMSz4sCj4+ICsgICAgICAgICAgICAgICAgICAgPCZnY2MgR0NDX1BDSUVf
U0xWX1EyQV9BWElfQ0xLPiwKPj4gKyAgICAgICAgICAgICAgICAgICA8JmdjYyBHQ0NfRERSU1Nf
TUVNTk9DX1BDSUVfU0ZfQ0xLPiwKPj4gKyAgICAgICAgICAgICAgICAgICA8JmdjYyBHQ0NfUENJ
RV9USUxFX0FYSV9TWVNfTk9DX0NMSz4sCj4+ICsgICAgICAgICAgICAgICAgICAgPCZnY2MgR0ND
X1FNSVBfUENJRV9DRkdfQUhCX0NMSz47Cj4+ICsgICAgICAgICAgY2xvY2stbmFtZXMgPSAiYXV4
IiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICJjZmciLAo+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgImJ1c19tYXN0ZXIiLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgImJ1c19z
bGF2ZSIsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAic2xhdmVfcTJhIiwKPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICJkZHJzc19tZW1ub2NfcGNpZSIsCj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAidGlsZSIsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAicW1pcF9wY2ll
X2FoYiI7Cj4+ICsKPj4gKyAgICAgICAgICBhc3NpZ25lZC1jbG9ja3MgPSA8JmdjYyBHQ0NfUENJ
RV9BVVhfQ0xLPjsKPj4gKyAgICAgICAgICBhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDwxOTIwMDAw
MD47Cj4+ICsKPj4gKyAgICAgICAgICBpbnRlcmNvbm5lY3RzID0gPCZzeXN0ZW1fbm9jIE1BU1RF
Ul9QQ0lFMl8wIFJQTV9BTFdBWVNfVEFHCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICZt
Y192aXJ0IFNMQVZFX0VCSV9DSDAgUlBNX0FMV0FZU19UQUc+LAo+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICA8Jm1lbV9ub2MgTUFTVEVSX0FNUFNTX00wIFJQTV9BQ1RJVkVfVEFHCj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICZjb25maWdfbm9jIFNMQVZFX1BDSUUyXzAgUlBNX0FD
VElWRV9UQUc+Owo+PiArCj4+ICsgICAgICAgICAgaW50ZXJjb25uZWN0LW5hbWVzID0gInBjaWUt
bWVtIiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiY3B1LXBjaWUiOwo+PiAr
Cj4+ICsgICAgICAgICAgaW9tbXUtbWFwID0gPDB4MCAmYXBwc19zbW11IDB4ODAwIDB4MT4sCj4+
ICsgICAgICAgICAgICAgICAgICAgICAgPDB4MTAwICZhcHBzX3NtbXUgMHg4MDEgMHgxPjsKPj4g
Kwo+PiArICAgICAgICAgIHJlc2V0cyA9IDwmZ2NjIEdDQ19QQ0lFX0JDUj47Cj4+ICsgICAgICAg
ICAgcmVzZXQtbmFtZXMgPSAicGNpIjsKPj4gKwo+PiArICAgICAgICAgIHBvd2VyLWRvbWFpbnMg
PSA8JmdjYyBHQ0NfUENJRV9HRFNDPjsKPj4gKwo+PiArICAgICAgICAgIG1heC1saW5rLXNwZWVk
ID0gPDI+Owo+IFlvdSBkb24ndCBuZWVkICdtYXgtbGluay1zcGVlZCcgdW5sZXNzIHlvdSB3YW50
IHRvIGxpbWl0IHRoZSBsaW5rIHNwZWVkLgpUaGlzIGlzIG5lZWRlZCBzaW5jZSBTaGlrcmEgY29u
dHJvbGxlciBzdXBwb3J0cyBHZW4zIGJ1dCB0aGUgUEhZCmlzIG9ubHkgY2FwYWJsZSBvZiBHZW4y
LiBXaXRob3V0IGxpbWl0aW5nIHRoZSBzcGVlZCwgbGluay11cCBmYWlscy4KPgo+PiArCj4+ICsg
ICAgICAgICAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmcGNpZV9vcHBfdGFibGU+Owo+PiArCj4+
ICsgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPj4gKwo+IE5vLCB5b3Ugc2hvdWxkIG5v
dCBkaXNhYmxlIHRoZSBleGFtcGxlLgpBQ0sKPgo+PiArICAgICAgICAgIHBjaWVfb3BwX3RhYmxl
OiBvcHAtdGFibGUgewo+PiArICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJvcGVyYXRp
bmctcG9pbnRzLXYyIjsKPj4gKwo+PiArICAgICAgICAgICAgICAgICAgLyogR0VOIDEgeDEgKi8K
Pj4gKyAgICAgICAgICAgICAgICAgIG9wcC0yNTAwMDAwIHsKPj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgb3BwLWh6ID0gL2JpdHMvIDY0IDwyNTAwMDAwPjsKPj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgcmVxdWlyZWQtb3BwcyA9IDwmcnBtcGRfb3BwX25vbT47Cj4gQXJlIHlvdSBz
dXJlIHRoYXQgdGhlIHBvd2VyIGRvbWFpbiBuZWVkIHRvIGJlIGluIE5PTSBmb3IgMi41IEdUL3M/
CkNvbmZpcm1lZCBmcm9tIEhXIHRlYW0sIGJvdGggR2VuMSBhbmQgR2VuMiBjYW4gd29yayBpbgpM
b3cgU1ZTIGNvcm5lci4gV2lsbCBiZSBmaXhlZCBpbiB2Mi4KPgo+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICBvcHAtcGVhay1rQnBzID0gPDI1MDAwMCAxPjsKPj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgb3BwLWxldmVsID0gPDE+Owo+PiArICAgICAgICAgICAgICAgICAgfTsKPj4g
Kwo+PiArICAgICAgICAgICAgICAgICAgLyogR0VOIDIgeDEgKi8KPj4gKyAgICAgICAgICAgICAg
ICAgIG9wcC01MDAwMDAwIHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgb3BwLWh6ID0g
L2JpdHMvIDY0IDw1MDAwMDAwPjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgcmVxdWly
ZWQtb3BwcyA9IDwmcnBtcGRfb3BwX25vbT47Cj4gU2FtZSBoZXJlLgpBQ0sKPgo+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICBvcHAtcGVhay1rQnBzID0gPDUwMDAwMCAxPjsKPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgb3BwLWxldmVsID0gPDI+Owo+PiArICAgICAgICAgICAgICAg
ICAgfTsKPj4gKyAgICAgICAgICB9Owo+IE9kZCBpbmRlbnQuCkFDSwo+Cj4gLSBNYW5pCj4KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
