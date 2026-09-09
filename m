Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D748AC79FAD
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 11:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=el9wr7VQtLFDPgiWz6A7gwl9kP/AogvNqGZlNj3fBbI=; b=j/R2pVgZs45zHk
	M7Q0d4C+45YCqhqKWRtKCf/4eKEiOSd0xle8dRWydXjrnIgPqGovcE98oYttN8aXZX9mvdRMHTr2O
	/sskeanUXeXWRF60e2RGkKvjrlmyiOn7LgCuZknDR2HEDg9KtSvAX4fDlkAhUOQXfPE/5J80GrznP
	+IKvkrc5G1OJ6vrNETIrogsNf1XOPlC0JgBinrrigEw3xBt+hRd5kp+dHkxc4VJ4SJaiLHcXN6BSr
	chtsEavqUT/Q41CItKRgDWYF3eOxCAktKeVqOCpFwfolGjnQpPa8pBE4c4w8fGqjycZQ0savaiSTM
	nPlK7J3mALRxeObhJ2xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Gn8-0000000BccL-2LdG;
	Wed, 09 Sep 2026 11:48:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Gn5-0000000Bcbm-3ol0
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 11:48:37 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 689BU71f599841
	for <linux-phy@lists.infradead.org>; Wed, 9 Sep 2026 11:48:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Mquv4bvtnPno64YDX0x59O
	34H98rzwKzFq0G//K2ahY=; b=c28PXU+9BHslQ80MzI50lJD6r16ZlkoABtsPeC
	7btrNYS4ihawUS2vMZpNXjg3CYrrICdbyFt5n2dAt2LIoE/3gy+cdFcCPcGrkbEF
	RNV6qMILYQI2Bk9OUD90SS2uXDMzOBo/5oUxikt+0jLv3Kgji+O+u7bxxvTjk6ZI
	vjis3Uotyvfk3lsUtpe4hdFwVhdEsPFpsjB4iR8fgXTAunPNMTCRLOwsx+WHm5Sn
	qxVSLp9C/h6KA/HzhzsBrANuzAHPner+eEfEy40cZSuc7QvbBplLnjI7xIgZt3A3
	utMAYcmXJxKrsuSOSBr4Ej+zFDn7aZTRQPFyK+g/zuU4H/lA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gjywr1saw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 11:48:35 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-39b90cc0d5cso3112638a91.0
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 04:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788954514; x=1789559314; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Mquv4bvtnPno64YDX0x59O34H98rzwKzFq0G//K2ahY=;
        b=HZJPfHXZfFbSHcs8Vq2/Ne9JCbGckXq0xXYi6VvumiA/x3r/A18faFFlAhaUxiOhVx
         W9BMAqxBlxDag6aKcJSJBtgT+CP/aIVp1iX/Vr5M5zbnWu0aE4u+LSSfnox5Bj6FlPgp
         GOOe3LZS+ghJya0Z3DGihKsfBn+gT1QAShou4/9kQ6tNJ16hWBnJQj5E64B5Oju7rHuh
         m/kgih9rbh1t6IEIH6rWdwOeZQ3Pfg7pnRJ9ozmZjr3sFBuTtJ5Tjo21RF+ze9TKkSPc
         zyxuOEP88INqEHOxMeIF+e68Wp3s+pyOZ8PtUW50PWM5NjIfBQidbvFHEX1kqheraYym
         NMvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788954514; x=1789559314;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Mquv4bvtnPno64YDX0x59O34H98rzwKzFq0G//K2ahY=;
        b=eePQd1uRdcQbJcD528TVZWeAaWpQ5ScmNb86Hym9wqO6+ivMtEl/prpO9LGr4q91zE
         6DNr+ZHIz3JATGBz79GQzmIUkU0y1uSeu/4PJF24xtBmR1Gr65C0Pv9oFZn2JXtKtPVi
         Tl82yyUW3gt+e32Sh9N3EvlxwRKrnK6M5eOIIB/npPQ+4y8ok0etCxQBS+pBHVjaHX5V
         IEUUh859lj9oIVqhal+6Rxn80rSYe53qZqjtOGpLNrtIKtqtg3gKsfMKMz0sEKYxa04T
         KT0W7pIxpuXEbkxw30gs05M4k5+BDqkW4jvHRU8NnweEF2/AwEgM93NJIcqTtn3ChikZ
         tdBA==
X-Forwarded-Encrypted: i=1; AKwUvBybqca4QKBJXoU8GY6BnWkQJkAHHt47DqUeI00WpcmNZ/LNPdgv7cNxlyIag8YcE75plv4ZiJQXmYQ=@lists.infradead.org
X-Gm-Message-State: AFuF++mIQ5Ml7iz/9wkv6HUnppYhMMFuwMpifg1Qo0Sr9JNxaj9ygA78
	GYbDyVz2IxOBtXdYfv/HVBec453ljC/pu3uSepx+GecHxtlx2VQnTBZT+adUdkiiANdm1vSmZ1R
	pm94PLEqf2A3lQsOvky56+2lMGpumg8PSSh/SlfIetVriAx2lF3rplBTRInd0jKj2ab3Fx5IAvB
	Ij
X-Gm-Gg: AYBFou1KHy7QmM1mOQj8TLKq22YfhnK/7m3KwA8hz2usSJmrt9xKAw72soQNySGklRS
	be17hxJM6HX22/ewmKK/OcY9J3eTAxh0AXgil2lvDno0yFp2wkloqQyMSzUSDqqsOBE6ne5YPwE
	cg8K2lTn/IxT4Rp8LyoXnrDYiB92KbcXuxZ4C+1lHzE3dZcdBJybFtnciIid8empJlYwhQXOngE
	/DU2eFQtBaXbvzzZuoxKjNbTtHFKFE/3RFTuHtqaVMupc8w1tPtSbsHcv+rHm17g0RLC6ZaA5vA
	2Oic1IW+1909xFbz2isGoMzFBz2C1aR2f1rvTMVAH1jtHypyq80RoduoUFcD6h3AEk19zQmr8LP
	MhGXwrPoYLpBfPAPwRNyCizduhtmqOFzWmV0=
X-Received: by 2002:a17:90b:2d07:b0:398:ceed:6d44 with SMTP id 98e67ed59e1d1-39b262abd26mr51142944a91.25.1788954514283;
        Wed, 09 Sep 2026 04:48:34 -0700 (PDT)
X-Received: by 2002:a17:90b:2d07:b0:398:ceed:6d44 with SMTP id 98e67ed59e1d1-39b262abd26mr51142876a91.25.1788954513683;
        Wed, 09 Sep 2026 04:48:33 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339b608409sm50156857eec.21.2026.09.09.04.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 04:48:33 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v3 0/5] Add PCIe support for Qualcomm Nord platform
Date: Wed, 09 Sep 2026 17:18:15 +0530
Message-Id: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAH9HoWoC/22OSw6CMBRFt0I6tqQt0I8j92EcUNpKjVJtgWgIe
 7cFBiQ6eclN7jn3TSBob3UAx2wCXo82WNfFUBwy0LR1d9XQqpgBQYQijhHsnFewpJgjYbCqag1
 i9em1se9Fc76sOQzypps+sanR2tA7/1l2Rpx6m5KUq3LEEEFBhSwYk4gVxcmFkL+G+t64xyOPJ
 2k2ptoxrEHEEMkZrepfJn0zkv0e31gSWcylqYTCQlHzh53n+QsrnqtZIQEAAA==
X-Change-ID: 20260810-nord-461809f1d5ae
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, shengchao.guo@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788954507; l=4014;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=QOH9VKcTjY4fR2PU9QKFwEi3IrUNdtI6tTSaKUmMsSE=;
 b=auKGTwrVv5IN7itNtVlGJ1e8h5srMRxNRaR4A0lEnaQrxsFjIB3M/XkPmP3CFE1mOItWGseV9
 LouQTPgNx61AkZAiSmXHVZ/ulkKoCvm/xdTjk0yknOiZrgOO3xhEO+K
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=a4YAM0SF c=1 sm=1 tr=0 ts=6aa14793 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=1XWaLZrsAAAA:8 a=P-IC7800AAAA:8 a=JfrnYn6hAAAA:8 a=_HC7VgZuvUK4spJUPywA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22 a=d3PnA9EDa4IxuAV0gXij:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA5MDEzMSBTYWx0ZWRfX2utE/LSenwqZ
 jw+owr5Dyp9lXl1YdBtdi/jrYvaLo96Rgb4p1yYXF5GatvnxcVsFmqQax+4WYtJ3eVR3QWVXa12
 gTHvZfF8iT5iTYwyBK4JyDUdB/RvxzmB04mgJSwtvcSQKz+a0i5+hByq4vCL8HsRXqrhftsO0+I
 p499SVbcekQj0oARy+EZFPG/m5lEDt3vDfMJC9L0v3tqZZ/EM4upLhB0cStMtbOpuzu41aw4Ls+
 Yvmf0fAqFmzHsjSd6is7m2yadta8HqKuIl37k1U/sZCc55z5tFfpdXs/dqOtbOygT1fFUl8e3In
 sWq6LHop/n+5YAK78cmjnwYWqaXUnQlY87/A3XDJor5EjVuJnxeR5IeUo0zsfF6E/Y1ZoznvMFX
 9U9vg26TOfVyIxpl8H134M//rhWU4Bwon/+Emcq0OKBqDMULexfSFFuab7BLIRGsyc/L+5eU+1z
 13z+jwOCuoILBckYZ8Q==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA5MDEzMSBTYWx0ZWRfX2QG2HdbHLV55
 llOgBZnv+TONnKsFZs6qZ4B4+aZMEBKukvrOYIjSJzke/JPpAV94mKezeyNBwzbYnOciDZooZIx
 iW2cD8QdkBU5z4LHOijxWU5l6dwS5Jk=
X-Proofpoint-ORIG-GUID: WNzMCM5206wDfjd3gOeLKyQZymMIidW8
X-Proofpoint-GUID: WNzMCM5206wDfjd3gOeLKyQZymMIidW8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_03,2026-09-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 clxscore=1015 spamscore=0 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609090131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_044835_956850_58646CA1 
X-CRM114-Status: GOOD (  16.08  )
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

VGhpcyBzZXJpZXMgYWRkcyBQQ0llIHN1cHBvcnQgZm9yIHRoZSBRdWFsY29tbSBOb3JkIChTQTg3
OTdQKSBwbGF0Zm9ybS4KCk5vcmQgaGFzIGEgc2luZ2xlIEdlbjUtY2FwYWJsZSBRTVAgUENJZSBQ
SFkgYmxvY2sgc3BsaXQgaW50byBmb3VyCmluZGVwZW5kZW50bHktY2xvY2tlZCBhbmQgaW5kZXBl
bmRlbnRseS1yZXNldHRhYmxlIHBvcnRzIChBL0IvQy9EKS4KRmlybXdhcmUgc2VsZWN0cyB0aGUg
YWN0aXZlIGxhbmUgdG9wb2xvZ3kgYXQgYm9vdCB2aWEgYSBUQ1NSCmNvbmZpZ3VyYXRpb24gcmVn
aXN0ZXIsIGFuZCB0aGUgc2FtZSBQSFkgYmxvY2sgY2FuIGFwcGVhciBhcyBhIHNpbmdsZQp4MTYg
cG9ydCwgeDgreDgsIHg4K3g0K3g0LCBvciB4OCt4NCt4Mit4MiBkZXBlbmRpbmcgb24gdGhhdCBt
b2RlLiBUaGlzCmlzIHNpbWlsYXIgaW4gc3Bpcml0IHRvIHRoZSBHbHltdXIgbXVsdGktUEhZIHN1
cHBvcnQgYWxyZWFkeSBwb3N0ZWQsCmV4Y2VwdCBOb3JkJ3MgUEhZIHJlZ2lzdGVycyBhcmUgcHJv
Z3JhbW1lZCBieSBMaW51eCByYXRoZXIgdGhhbiBieQpmaXJtd2FyZSwgc28gdGhpcyBzZXJpZXMg
YWRkcyB0aGUgUExMLCBUWFJYWiwgUENTIGFuZCBQQ1MtbGFuZSBpbml0CnRhYmxlcyBhbG9uZyB3
aXRoIHRoZSBwb3dlci11cC9wb3dlci1kb3duL3NvZnQtcmVzZXQgc2VxdWVuY2luZyBuZWVkZWQK
dG8gYnJpbmcgZWFjaCBwb3J0IHVwLgoKVGhlIHNlcmllcyBhbHNvIGRvY3VtZW50cyBhbmQgd2ly
ZXMgdXAgdGhlIHFjb20sbm9yZC1wY2llIGNvbXBhdGlibGUKKHJldXNpbmcgdGhlIGV4aXN0aW5n
IFNBODc3NVAgUENJZSBjb250cm9sbGVyIGJpbmRpbmcpLCBhbmQgYWRkcyBhCkNPUkVfQ0xLX0NH
Q19ESVMvQVVYX1BXUl9ERVQgd29ya2Fyb3VuZCByZXF1aXJlZCB0byBhdm9pZCBhIHRpbWluZwpj
b252ZXJnZW5jZSBpc3N1ZSBpbiB0aGUgUENJZSBwb3dlciBkb21haW4uCgpTaWduZWQtb2ZmLWJ5
OiBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1YWxjb21t
LmNvbT4KLS0tClRvOiBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgpUbzogTmVpbCBBcm1z
dHJvbmcgPG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmc+ClRvOiBSb2IgSGVycmluZyA8cm9iaEBr
ZXJuZWwub3JnPgpUbzogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6aytkdEBrZXJuZWwub3JnPgpU
bzogQ29ub3IgRG9vbGV5IDxjb25vcitkdEBrZXJuZWwub3JnPgpUbzogQ2hhaXRhbnlhIENodW5k
cnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29tPgpUbzogTG9yZW56byBQaWVyYWxp
c2kgPGxwaWVyYWxpc2lAa2VybmVsLm9yZz4KVG86IEtyenlzenRvZiBXaWxjennFhHNraSA8a3dp
bGN6eW5za2lAa2VybmVsLm9yZz4KVG86IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaUBrZXJu
ZWwub3JnPgpUbzogQmpvcm4gSGVsZ2FhcyA8YmhlbGdhYXNAZ29vZ2xlLmNvbT4KVG86IEJqb3Ju
IEFuZGVyc3NvbiA8YW5kZXJzc29uQGtlcm5lbC5vcmc+ClRvOiBNYXhpbWUgQ2hldmFsbGllciA8
bWF4aW1lLmNoZXZhbGxpZXJAYm9vdGxpbi5jb20+ClRvOiBQaGlsaXBwIFphYmVsIDxwLnphYmVs
QHBlbmd1dHJvbml4LmRlPgpDYzogbGludXgtYXJtLW1zbUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9y
ZwpDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtcGNpQHZnZXIua2Vy
bmVsLm9yZwpDYzogc2hlbmdjaGFvLmd1b0Bvc3MucXVhbGNvbW0uY29tCgotLS0KQ2hhbmdlcyBp
biB2MzoKLSBjaGFuZ2UgdGhlIG5hbWUgdG8gcXVhZGZ1cmNhdGVkIHBoeSAoS29ucmFkKS4KLSBy
ZW1vdmUgbWluIGl0ZW1zIGFuZCBjaGFuZ2UgY2xvY2tzIG9yZGVyIChLcnp5c3p0b2YpLgotIEZh
Y3RvciBvdXQgdGhlIGNvbW1vbiBjb25maWcgYW5kIGNyZWF0ZSBvdmVybGF5cyAmIHRyeSB0byB1
c2UgY29tbW9uCiAgc3ltYm9scyBmb3IgZ2x5bXVyIGFuZCBub3JkIChLb25yYWQpLgotIGNyZWF0
ZSAgcXBoeV9zZXRiaXQgYW5kIHFwaHlfY2xyYml0IChRaWFuZyBZdSkuCi0gYW5kIGluIHFtcF9w
Y2llX2V4aXQoKSBhcHBseSBzZXR0aW5ncyBvbmx5IHdoZW4gbm9jc3IgaXMgcHJlc2VudCAoUWlh
bmcgWXUpLgotIExpbmsgdG8gdjI6IGh0dHBzOi8vcGF0Y2gubXNnaWQubGluay8yMDI2MDgyOC1u
b3JkLXYyLTAtMThiZjU5ZDE5ZDZmQG9zcy5xdWFsY29tbS5jb20KCkNoYW5nZXMgaW4gdjI6Ci0g
Rml4IGR0YmluZGluZyBlcnJvcnMgKEtyenlzenRvZikKLSBMaW5rIHRvIHYxOiBodHRwczovL3Bh
dGNoLm1zZ2lkLmxpbmsvMjAyNjA4MjUtbm9yZC12MS0wLTdjMDJmMmI4NzY1YUBvc3MucXVhbGNv
bW0uY29tCgotLS0KS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSAoNSk6CiAgICAgIGR0LWJpbmRp
bmdzOiBwaHk6IHFjb206IGFkZCBOb3JkIFFNUCBQQ0llIFBIWSBiaW5kaW5nCiAgICAgIGR0LWJp
bmRpbmdzOiBwY2k6IHFjb206IGFkZCBOb3JkIFBDSWUgY29udHJvbGxlciBjb21wYXRpYmxlCiAg
ICAgIFBDSTogcWNvbTogQWRkIENHQyBkaXNhYmxlIHdvcmthcm91bmQgZm9yIE5vcmQgUENJZQog
ICAgICBwaHk6IHFjb206IHFtcDogTW92ZSBxcGh5X3NldGJpdHMvY2xyYml0cy9jaGVja2JpdHMg
dG8gY29tbW9uIGhlYWRlcgogICAgICBwaHk6IHFjb206IHFtcC1wY2llOiBBZGQgTm9yZCBHZW41
eDE2IFBDSWUgbXVsdGktUEhZIHN1cHBvcnQKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kv
cWNvbSxwY2llLXNhODc3NXAueWFtbCB8ICAgMSArCiAuLi4vcGh5L3Fjb20sbm9yZC1xbXAtZ2Vu
NXgxNi1wY2llLXBoeS55YW1sICAgICAgICB8IDI3MiArKysrKysKIGRyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtcWNvbS5jICAgICAgICAgICAgIHwgIDE2ICsKIGRyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jICAgICAgICAgIHwgIDI0IC0KIGRyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21tb24uaCAgICAgICAgIHwgIDMyICsKIGRyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLW1zbTg5OTYuYyAgIHwgIDI0IC0KIGRyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLW11bHRpcGh5LmMgIHwgOTM4ICsrKysr
KysrKysrKysrKysrKystLQogZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUu
YyAgICAgICAgICAgfCAgMzIgLQogZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBj
cy1wY2llLXY2XzQwLmggfCAgNTYgKysKIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC1wY3MtdjZfNDAuaCAgICAgIHwgIDE0ICsKIC4uLi9xdWFsY29tbS9waHktcWNvbS1xbXAtcXNl
cmRlcy1jb20tcGNpZS12Nl80MC5oIHwgIDk0ICsrKwogLi4uL3BoeS1xY29tLXFtcC1xc2VyZGVz
LXR4cnh6LXBjaWUtdjZfNDAuaCAgICAgICAgfCAxOTQgKysrKysKIGRyaXZlcnMvcGh5L3F1YWxj
b21tL3BoeS1xY29tLXFtcC11ZnMuYyAgICAgICAgICAgIHwgIDI0IC0KIGRyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC11c2IuYyAgICAgICAgICAgIHwgIDI0IC0KIGRyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC11c2JjLmMgICAgICAgICAgIHwgIDI0IC0KIDE1IGZpbGVz
IGNoYW5nZWQsIDE1NDMgaW5zZXJ0aW9ucygrKSwgMjI2IGRlbGV0aW9ucygtKQotLS0KYmFzZS1j
b21taXQ6IDE1NTAyODc0ODRkMjllNjgwNTVhZTRhY2Y1MmQ5MzI0ODM1ZWY5YzEKY2hhbmdlLWlk
OiAyMDI2MDgxMC1ub3JkLTQ2MTgwOWYxZDVhZQoKQmVzdCByZWdhcmRzLAotLSAgCktyaXNobmEg
Q2hhaXRhbnlhIENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29tPgoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
