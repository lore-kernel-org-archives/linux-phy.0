Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68ABAC47BEA
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 13:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVwO56kox0QiXalXUU/6XIKWNjhA0PFpcJtlhBUUpDA=; b=r1VP/985raj0NF
	0G/e9R1rmOZJ9u+lW9bbg3d1YpCf8MhFvbK1BA9tLsKyiorb7t7fmXRZR6eQCJsakOBtxDKJ/kt98
	91/ShtczDkP2NjkYG8UGffCq1S3yYVjnUJd26g55gQ4P/Vs0DgnwlIyT+r8NMDrae7Vs6guQPaWMk
	xxDoPLB+iS41GFu1Rb1Azp5yVmHv8sM2CaETi/l1zXuAh66qEiCLcaL1AeUuUtuRUe8/ZPaTlYeCh
	ldT50E/3BBa37TNYrIf4yPib0ZsEJ9ihfubiyH9cnEBSpBUnFaCI/l24sNO8RY4VuJMd27+HHODwY
	m1aWmfiLMe89DURc6HiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7UE-0000000DDzM-0gUJ;
	Tue, 06 Jan 2026 13:52:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7U9-0000000DDyM-2G9W
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 13:52:34 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606AFPGD2429813
	for <linux-phy@lists.infradead.org>; Tue, 6 Jan 2026 13:52:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	69L9hORNOToKC8dCqW8wEbOCuaXEakIhANIpeU+LfCc=; b=cLMhynWK/VzAGRvv
	cfs8HutXqhyakpONGOgG4IA8BIhVunT3nBggdFR2SqswkdXM188J/4rDZR6MGrjV
	S897nquRZCUD0EQuPApmKMArCeHZY0PQBraciQrB6bIin1pk77HErlHRcFoxFZeB
	HJ7ZgvbrvqWvQO5mzmkM1qpw9shvb0i947YTU4E2IcAmHyCnedRflKK6e3MGaH4V
	TeqSeiovjaytskI73vLcoDe1IBXT3xqeWS8lbbjACd7eOOefXJQMAiAIKM4HtpV+
	XsUgtFz/XFW24P2q5/4bRmd2EhlAgZHS+N7rhteKWeYy/4wppai13CHtPOd3+J5X
	sZ7dBw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgr73a1jv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 13:52:33 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-bddf9ce4931so1744722a12.0
        for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 05:52:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767707552; x=1768312352; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=69L9hORNOToKC8dCqW8wEbOCuaXEakIhANIpeU+LfCc=;
        b=Jxl8FFIvEVFe+VtKFCX51pPyoGDACKD93svG2535GE8MsnkT2A0jVex/w2T43fFd/g
         OzvNCzqUIyVTQlvht2m3aN0vOXbaIGWowv8JzvJszQQU6aYTq4PMLmi3Bw+J++DebHUg
         KPQo93ra6iNR+OiVc4yjzICDT1cFKDdkfBZ5rzuz4JdavqNeYwneZhZbZ8LstB5fy+cB
         DdFH/zTuxvhHX3PpWy1Bclqezvm+UuNjxbF4IKC4ED1DUcXkp9IBy5UZoAJ8TTRWMuOk
         76BIRPJoxRT36KT48dR0cCWixZpwysnDGuq0H2ke5AmuPhT4LDdCtxAtNlCGRzGyUSjc
         dubQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767707552; x=1768312352;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=69L9hORNOToKC8dCqW8wEbOCuaXEakIhANIpeU+LfCc=;
        b=D1NhpU6A+7Ahkm7tfcm7PtEiAydNUgxCXkoTB9WON2eQ3ZjDD7xSFSwejrzkRQLFIo
         X3PztewxR4HN8EJP77YavxKe/ZlDSBXtYOt3X7/rLrfmzkAhuQFYFd44vFgPY2xcJgZt
         Bi+XC4fBiqbAuIlapLCsxaPTb1eaUTx/G7RUI93PDwWkME2LlC1r7fUTRxdLuEB/WAOk
         xbSZ4mJPKEiHUWT9X5MTXsc/G7gl0nqfBPiioMqnN+VhH+G2fEWanFfUi2/eNeFUTP04
         z8qZBpRPUdqlxkKX8ZC9i/wg55gFriWoPlkIjfV7MeJnZ5sVHEoT/92VwkYVrlGoRN95
         Rs5g==
X-Forwarded-Encrypted: i=1; AJvYcCV2vu7zT3YpU3xPES9z270tcP7CjE5C8G48RU7l97smoSDh/pbUZS3pzqIsmJKsMeRzshWTLVW9u9g=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyu7TRV4dRtw8J8Y+jtCJeJFJ7g592YCWGN4u7jM09mSSo62kTg
	KvK/+s5coy3tcx/ANDHMZHK8TteG6c8vnbs86aF2iUR5Jmt8T8jBKq+9xA/CbwnLyRO6SebG0xT
	S33DPmscf0XzD8FIMAGQtm/Lwp5c8xgk3oKIuMjHwInZDZi4Rt+lzgro7N84s2dYsPXop
X-Gm-Gg: AY/fxX6x88wJbbfAkq2w1wVNdKhoo5Rd4K3oAZ8EHc8hy//yuy2luFoUDOZu5h9vRCs
	uUhh0CbvXzJx5HBlY09k9dhNnWrBhgI2T8H9iprSpL0uVjfMo8zWGRWGYSg8EfJg+CQwF/2QoyG
	0oxaFRn7d3JyS5JELq1xnVKOiHDdhF0mEX6kmX+CXuWXyX+NmFa49RvMX7nZ2H7kp3DoWCPKAlr
	ZYk6aSmO/TJO41cH2mVYGwSjorslqgZXJjo7YPghmGMqXHCWFNZABW6ucvUdFHrS/NaddCiZEON
	O94rlHAu+qARWp6XfGX3JpvuQddJ4qePstvhxKPU8dwhy/wD6Iw9Jl6KF92ML7ZnnDN0pbPSWYC
	SBwDiNmqnN3zkTgRFDLGJxAPJ
X-Received: by 2002:a05:6a20:e290:b0:350:2251:59f with SMTP id adf61e73a8af0-3898237bc4emr2703877637.38.1767707552274;
        Tue, 06 Jan 2026 05:52:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGAd9htxKz1Kby/a6BwohNG8XTxxujXxKPv86hzin3Gicw7jtMfe4ModJ+eBBaMP7enak0wqA==
X-Received: by 2002:a05:6a20:e290:b0:350:2251:59f with SMTP id adf61e73a8af0-3898237bc4emr2703844637.38.1767707551611;
        Tue, 06 Jan 2026 05:52:31 -0800 (PST)
Received: from work ([120.60.56.175])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c50347bc321sm263043a12.18.2026.01.06.05.52.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 05:52:31 -0800 (PST)
Date: Tue, 6 Jan 2026 19:22:23 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH V3 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for
 x1e80100 SoC
Message-ID: <dbkrbec6t2agwk2swe7olz6zkhyphpbcl7dpmlwie4esvbbvro@s7ybpmaod3d5>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
 <20260105144643.669344-4-pradeep.pragallapati@oss.qualcomm.com>
 <7gi7sh5psh5v4y5mrbgln6j2cjeu5mogdw2n3a6znjtqyjcyuk@kxpe566v57p3>
 <e396bef2-e5bf-4e6d-98f4-37977d5d93ec@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e396bef2-e5bf-4e6d-98f4-37977d5d93ec@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=QrxTHFyd c=1 sm=1 tr=0 ts=695d13a1 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=JR4DBjdY6jk8CmbmB73bTw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=ur2dxFwE6iJ6aD69mVkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: p8ntjDn9iSHagtLuzyWmWm1CEFCLAUEM
X-Proofpoint-GUID: p8ntjDn9iSHagtLuzyWmWm1CEFCLAUEM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDEyMSBTYWx0ZWRfX3Rdu0e29gT9l
 dYtNwV8Bp6vFP37SbSyg6UOnkx9nopUP/J0Eh51ey/FHM3c16uqa6LTLTJcoZpcFxukcajPXdQ/
 g2yHcVj4BFM9amLDcxp2pRApUbDUQ7ByWpU/obNjQkHyFKiNvPoeFumSJ5Pi+r6MKcv0ow0WtrG
 3zQlhaYPUHENv3X36WVoqKAWyAvWmfuisRuqgypHLLZI7bkXz13Qke7zHHwSHAEJyyiGwXrvNpl
 NPMNYCyq5XTmJanivj2DXrVlGQ2LowbFUXVKQUP9az1KVxDihJznY/fx8kEAfmqp8ou4Vmu7QjQ
 EykFpt3Bn9T/DI+882hl5a5MojIQ/9k88PREUlHHn+KGG4skcggFM77Kcq1C4mbyElXFAxGC//z
 /GoAiwTFfHH3V+Z9m5wbhO2HLStyREoF7Yx/lkXhcLv+r5d+UyO56dsOhOi/eOo9q2M5SHZruHQ
 7EMBefpA06zQGYVOFPw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_055233_584003_7BD275F4 
X-CRM114-Status: GOOD (  20.24  )
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

T24gVHVlLCBKYW4gMDYsIDIwMjYgYXQgMDY6MzA6MDVQTSArMDUzMCwgUHJhZGVlcCBQcmFnYWxs
YXBhdGkgd3JvdGU6Cj4gCj4gCj4gT24gMS82LzIwMjYgMTozNiBQTSwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+ID4gT24gTW9uLCBKYW4gMDUsIDIwMjYgYXQgMDg6MTY6NDJQTSArMDUz
MCwgUHJhZGVlcCBQIFYgSyB3cm90ZToKPiA+ID4gQWRkIFVGUyBob3N0IGNvbnRyb2xsZXIgYW5k
IFBIWSBub2RlcyBmb3IgeDFlODAxMDAgU29DLgo+ID4gPiAKPiA+IAo+ID4gTWlub3Igbml0cyBi
ZWxvdy4gV2l0aCB0aG9zZSBmaXhlZCwKPiA+IAo+ID4gUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4g
U2FkaGFzaXZhbSA8bWFuaUBrZXJuZWwub3JnPgo+ID4gCj4gPiA+IFJldmlld2VkLWJ5OiBLb25y
YWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5jb20+Cj4gPiA+IFJldmlld2Vk
LWJ5OiBBYmVsIFZlc2EgPGFiZWwudmVzYUBvc3MucXVhbGNvbW0uY29tPgo+ID4gPiBSZXZpZXdl
ZC1ieTogVGFuaXlhIERhcyA8dGFuaXlhLmRhc0Bvc3MucXVhbGNvbW0uY29tPgo+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBQcmFkZWVwIFAgViBLIDxwcmFkZWVwLnByYWdhbGxhcGF0aUBvc3MucXVhbGNv
bW0uY29tPgo+ID4gPiAtLS0KPiA+ID4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaGFtb2Eu
ZHRzaSB8IDEyMyArKysrKysrKysrKysrKysrKysrKysrKysrKystCj4gPiA+ICAgMSBmaWxlIGNo
YW5nZWQsIDEyMCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9oYW1vYS5kdHNpIGIvYXJjaC9hcm02
NC9ib290L2R0cy9xY29tL2hhbW9hLmR0c2kKPiA+ID4gaW5kZXggZjdkNzE3OTNiYzc3Li4zMzg5
OWZhMDZhYTQgMTAwNjQ0Cj4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9oYW1v
YS5kdHNpCj4gPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9oYW1vYS5kdHNpCj4g
PiA+IEBAIC04MzUsOSArODM1LDkgQEAgZ2NjOiBjbG9jay1jb250cm9sbGVyQDEwMDAwMCB7Cj4g
PiA+ICAgCQkJCSA8MD4sCj4gPiA+ICAgCQkJCSA8MD4sCj4gPiA+ICAgCQkJCSA8MD4sCj4gPiA+
IC0JCQkJIDwwPiwKPiA+ID4gLQkJCQkgPDA+LAo+ID4gPiAtCQkJCSA8MD47Cj4gPiA+ICsJCQkJ
IDwmdWZzX21lbV9waHkgMD4sCj4gPiA+ICsJCQkJIDwmdWZzX21lbV9waHkgMT4sCj4gPiA+ICsJ
CQkJIDwmdWZzX21lbV9waHkgMj47Cj4gPiA+ICAgCQkJcG93ZXItZG9tYWlucyA9IDwmcnBtaHBk
IFJQTUhQRF9DWD47Cj4gPiA+ICAgCQkJI2Nsb2NrLWNlbGxzID0gPDE+Owo+ID4gPiBAQCAtMzg0
OCw2ICszODQ4LDEyMyBAQCBwY2llNF9waHk6IHBoeUAxYzBlMDAwIHsKPiA+ID4gICAJCQlzdGF0
dXMgPSAiZGlzYWJsZWQiOwo+ID4gPiAgIAkJfTsKPiA+ID4gKwkJdWZzX21lbV9waHk6IHBoeUAx
ZDgwMDAwIHsKPiA+ID4gKwkJCWNvbXBhdGlibGUgPSAicWNvbSx4MWU4MDEwMC1xbXAtdWZzLXBo
eSIsCj4gPiA+ICsJCQkJICAgICAicWNvbSxzbTg1NTAtcW1wLXVmcy1waHkiOwo+ID4gPiArCQkJ
cmVnID0gPDB4MCAweDAxZDgwMDAwIDB4MCAweDIwMDA+Owo+ID4gPiArCj4gPiA+ICsJCQljbG9j
a3MgPSA8JnJwbWhjYyBSUE1IX0NYT19DTEs+LAo+ID4gPiArCQkJCSA8JmdjYyBHQ0NfVUZTX1BI
WV9QSFlfQVVYX0NMSz4sCj4gPiA+ICsJCQkJIDwmdGNzciBUQ1NSX1VGU19QSFlfQ0xLUkVGX0VO
PjsKPiA+ID4gKwo+ID4gPiArCQkJY2xvY2stbmFtZXMgPSAicmVmIiwKPiA+ID4gKwkJCQkgICAg
ICAicmVmX2F1eCIsCj4gPiA+ICsJCQkJICAgICAgInFyZWYiOwo+ID4gPiArCQkJcmVzZXRzID0g
PCZ1ZnNfbWVtX2hjIDA+Owo+ID4gPiArCQkJcmVzZXQtbmFtZXMgPSAidWZzcGh5IjsKPiA+ID4g
Kwo+ID4gPiArCQkJcG93ZXItZG9tYWlucyA9IDwmZ2NjIEdDQ19VRlNfTUVNX1BIWV9HRFNDPjsK
PiA+ID4gKwo+ID4gPiArCQkJI2Nsb2NrLWNlbGxzID0gPDE+Owo+ID4gPiArCQkJI3BoeS1jZWxs
cyA9IDwwPjsKPiA+ID4gKwo+ID4gPiArCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ID4gKwkJ
fTsKPiA+ID4gKwo+ID4gPiArCQl1ZnNfbWVtX2hjOiB1ZnNAMWQ4NDAwMCB7Cj4gPiAKPiA+IHVm
c2hjQAo+IG9rLCBpIHdpbGwgdXBkYXRlIGluIHRoZSBuZXh0IHBhdGNoc2V0Lgo+ID4gCj4gPiA+
ICsJCQljb21wYXRpYmxlID0gInFjb20seDFlODAxMDAtdWZzaGMiLAo+ID4gPiArCQkJCSAgICAg
InFjb20sc204NTUwLXVmc2hjIiwKPiA+ID4gKwkJCQkgICAgICJxY29tLHVmc2hjIiwKPiA+ID4g
KwkJCQkgICAgICJqZWRlYyx1ZnMtMi4wIjsKPiA+IAo+ID4gRHJvcCBqZWRlYyBjb21wYXRpYmxl
IGFzIFFjb20gVUZTIGNvbnRyb2xsZXIgY2Fubm90IGZhbGxiYWNrIHRvIGdlbmVyaWMgdWZzaGMK
PiA+IGRyaXZlci4KPiAiamVkZWMsdWZzLTIuMCIgd2FzIHNldCB0byBjb25zdCBpbiBkdC1iaW5k
aW5ncywgZHJvcHBpbmcgbm93IHdpbGwgbGVhZCB0bwo+IGR0YnNfY2hlY2sgZmFpbHVyZXMuIGlz
IGl0IG9rLCBpZiBpIGNvbnRpbnVlIHdpdGggaXQgPwoKSSB3YXMgaW1wbHlpbmcgdGhhdCB5b3Ug
bmVlZCB0byBkcm9wIGl0IGZyb20gYm90aCBiaW5kaW5nIGFuZCBkdHMuIEl0IHdhcwppbmNvcnJl
Y3QgZnJvbSB0aGUgc3RhcnQgYW55d2F5LCBzbyB0aGVyZSBpcyBubyBBQkkgYnJlYWthZ2UuIEJ1
dCBtYWtlIHN1cmUgeW91Cmp1c3RpZnkgaXQgaW4gdGhlIGRlc2NyaXB0aW9uLgoKLSBNYW5pCgot
LSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
