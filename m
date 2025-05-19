Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4397AC2D0CD
	for <linux-phy@archiver.kernel.org>; Mon, 19 May 2025 12:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RnzqI1+hMJQ3xwu+5iYQzkkW/9Gsjqf1XUDq47pQN3U=; b=XV1fWYkAPXNr0t
	wyYW5xvyV5fDQmKL7l7+QYfqDmyE+YEJmIf1dPRMSeO5BYD45ZXIg2v0va2Y9ohfow4NuyZHYa2aI
	h1dv18pKs4FDz4Utj5+TLO42Mhx1NzvwmfWpihn3AO2yRKMvdllKogpPiwyLBeXLqTP9QS8legCe9
	thfdrhK4iqSDON5hx7TnbSYWX+PdWRBhPugOucE/ydCUXxkYrnhQmAZ6qYuMRIB+VlFw1jn6Mljoc
	vVPb/Tqeop7tZIcp6ZV8iDYnz8Dtufw8wD+wWDji7FlEvTEhbMt8QJFVFlq9yzdtJ+xy8jyM4P1KM
	3Hvx81K8xoSdwNG3Ks0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGzgS-00000009AHS-3rWc;
	Mon, 19 May 2025 12:33:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGzPn-000000097Ee-1JKE
	for linux-phy@lists.infradead.org;
	Mon, 19 May 2025 12:16:21 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54J7GcrQ023182
	for <linux-phy@lists.infradead.org>; Mon, 19 May 2025 12:16:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u4G4v/3QWDx7UFXsSJeLbnLzxethnDdnhnF/yuDl88A=; b=I0vycz/65xIbhlSZ
	HzJdZQqIWkMD+AWh9lNYeHIMQpSisW3Q51HE6Lm9ZvXoo6XmZD3R4DmHVqPWBlhV
	V9E2kysF9y2xZm4yBj7nZbyAHwghU4cq/9Zd3cN5Vva2r2crxry/NWsZse6PV+rL
	JTNM5R//ur4WxUPn3AIK7iAZF254iPPzzqPWen2N9e79Yf4htVsZbDoyWzYGqK4+
	2T4lyb0EGkIpLiaRcCrWPqC6vGehKRbtw8oVQg52a7bdR3mHsowDjO1dtBAbBGPf
	26RA+2sIxpYKiPb3+SCJTXfUres6F7mVVzA0qM+c288fvq2+/nzwovk+/wEbeA52
	qJkv+w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46r041rugj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 19 May 2025 12:16:17 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-23222fdb4f2so23574735ad.3
        for <linux-phy@lists.infradead.org>; Mon, 19 May 2025 05:16:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747656976; x=1748261776;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u4G4v/3QWDx7UFXsSJeLbnLzxethnDdnhnF/yuDl88A=;
        b=NJoufCx4ydpslfbdPodU9TaU+1RLwGUzs4iBfq2gQrF/DeckYC0ZdD8+8NBwNi8u55
         Eu2flFhtvApemShwkV4Er2juZJKVYQxpFHY24UEe6S+meXWkb2a0GtO/Ge99xoavcmAO
         c5FMwFXngAfwF57/CZiR5XMtLJuiezud7LjqA5Bi1hH6K+d1tM/va/fpiz6WUQzLSo3o
         CzjG44o4aJ9n5zuh/QFahIkM/iLY/1iARb+5vZG1zpsm0NWgOGSFsw6Xsxp8l6x20684
         0YPwp8fgcv5k8KiTNQvPzxLsRaoDPyiaP6lzgRYa/7kSTwtZnYIdO8IEviN6KBn8puuD
         t+6w==
X-Forwarded-Encrypted: i=1; AJvYcCV0VHQ/D7OEXB0JGWC3at6F2SXHpqK6jq0eA+JhMupfzpJg5a7dUTgW1na4JLg4HcQSAj9xFeNq9gA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxpsoKODlA3XSdH8jGAuAjKYKdIyTTotKEUuuETa47cokbW6/lw
	DPFoVozn2KolPNnqDxjRMjqQUfC2WpWYpz9+BLOnsn0JDJ6IK/NAka15zQ+I1kG/GknI48hFzE8
	bdY8n/M45stXt1y/0nS/hIiYX4GqUQ3b4YcOgNPnLHFBB1Ldnhp3UQOOanYG2NRvBGMcuCi2zWN
	gyiYcSDT+jTGPOgf2vl5ATmyeoxHiLupOR6IjVR8P59Qg=
X-Gm-Gg: ASbGnct6Ln6D9eRjj5gXcu9n2bWCuV3I/C0F5syBdptgr1DJMwdWdA5GF0wUdT4Y65p
	XNK80UrPgAXhZV/l8yIQl50c69CCCzXXUmOLpArTdEboOZDX2PyL9FnUIvCfkkWyVEallKQ==
X-Received: by 2002:a17:902:e801:b0:231:7f29:bda0 with SMTP id d9443c01a7336-231de5b0ba7mr160018115ad.52.1747656976189;
        Mon, 19 May 2025 05:16:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEHd8pbYGLE6SycYb8UZ6wrWsr0sYw3IPLE+tXeV+ix6q6M438C0T4/cbceiUfp/qjiHUeu+4uzOdIUmRTLGKQ=
X-Received: by 2002:a17:902:e801:b0:231:7f29:bda0 with SMTP id
 d9443c01a7336-231de5b0ba7mr160017815ad.52.1747656975770; Mon, 19 May 2025
 05:16:15 -0700 (PDT)
MIME-Version: 1.0
References: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
 <20250514-update_phy-v2-2-d4f319221474@quicinc.com> <8ba99df8-012b-4883-af6a-970dd9f877f6@linaro.org>
 <f5e1510f-3496-4f5e-b093-623d3b4be428@oss.qualcomm.com> <CAMyL0qPH2r8oXOrNp3jF-nBJCRCZzJr8rYrHn+Yp0MHR0Wy-vw@mail.gmail.com>
 <bpc4tsp4kghqohoxm42qls7gzd5me7xrpodmazyhpvjjlkkay2@paoq5zygczdd>
In-Reply-To: <bpc4tsp4kghqohoxm42qls7gzd5me7xrpodmazyhpvjjlkkay2@paoq5zygczdd>
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Date: Mon, 19 May 2025 17:46:04 +0530
X-Gm-Features: AX0GCFvgmiM69A2CqrAIbnHrTDa4cVJKrTijAb5UUN_qj4VtV9AOkvTBIyXtUYc
Message-ID: <CAMyL0qNQWN1ORReZu3wrw_Ex+nAmAJxhTMCt4Jw6PyEN4tEtGQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDExNSBTYWx0ZWRfX8uqPQGjtEBRd
 75QmCxrhs8WCsLyxnYA3Y7Nj5pTJeNDwFpeYx5x1GnbBybLbF9+jimNEdnx0Lg19VNDPNBZ8pwv
 dQHhWx0N66YWDR2Gk5ShtJMaI07tB+hBayDyLCZoz1DFRyVhS5APYd2Ry2MdeT4V/8K8SBJn4Wf
 e/R+MwPOylpjS2xdpBmZZ+gYslMG5VfgHjjEsVR9jic6Ct/A6Y0QYnHmGgZ1iElVDEyeXz0cRkh
 hSaj4LPMxhWjXQH6Fh2xY+RA3VX9KcHfqgTn+6JIaUn+91u9a69OByu5E+lQ1tuIY0lpPve0QI2
 5lUG3tos5eCSA4/0IAJih2mcy5Pb8EzUv0+Zq2hhPo/8E4ipmR7JI2JBCGuGSWkYiMgDvFJ0Zpc
 j8+h08xBo29nXW9vr9QRt6d4np5OMkrxlj6vc7cQdY6pXJ/oXV/Gws6TI3WA5VrodanDR7cR
X-Proofpoint-ORIG-GUID: T4M_EmmoWUi9esMvuhy2EXYB-kj6tUvc
X-Proofpoint-GUID: T4M_EmmoWUi9esMvuhy2EXYB-kj6tUvc
X-Authority-Analysis: v=2.4 cv=HIjDFptv c=1 sm=1 tr=0 ts=682b2111 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=12gvMKcd2kyX8A_DGUMA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_05,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 mlxscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 impostorscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505190115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_051619_363998_041EBD19 
X-CRM114-Status: GOOD (  24.51  )
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

T24gU2F0LCBNYXkgMTcsIDIwMjUgYXQgMzozM+KAr0FNIERtaXRyeSBCYXJ5c2hrb3YKPGRtaXRy
eS5iYXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4KPiBPbiBGcmksIE1heSAxNiwg
MjAyNSBhdCAwMzo1OTowMlBNICswNTMwLCBNcmlubWF5IFNhcmthciB3cm90ZToKPiA+IE9uIEZy
aSwgTWF5IDE2LCAyMDI1IGF0IDI6MzDigK9QTSBLb25yYWQgRHliY2lvCj4gPiA8a29ucmFkLmR5
YmNpb0Bvc3MucXVhbGNvbW0uY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gNS8xNC8yNSA2OjM4
IFBNLCBuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnIHdyb3RlOgo+ID4gPiA+IE9uIDE0LzA1LzIw
MjUgMTM6MzcsIE1yaW5tYXkgU2Fya2FyIHdyb3RlOgo+ID4gPiA+PiBGcm9tOiBNcmlubWF5IFNh
cmthciA8bXJpbm1heS5zYXJrYXJAb3NzLnF1YWxjb21tLmNvbT4KPiA+ID4gPj4KPiA+ID4gPj4g
VGhlIG1heGltdW0gbGluayBzcGVlZCB3YXMgcHJldmlvdXNseSByZXN0cmljdGVkIHRvIEdlbjMg
ZHVlIHRvIHRoZQo+ID4gPiA+PiBhYnNlbmNlIG9mIEdlbjQgZXF1YWxpemF0aW9uIHN1cHBvcnQg
aW4gdGhlIGRyaXZlci4KPiA+ID4gPj4KPiA+ID4gPj4gQWRkIGNoYW5nZSB0byByZW1vdmUgbWF4
IGxpbmsgc3BlZWQgcHJvcGVydHksIFNpbmNlIEdlbjQgZXF1YWxpemF0aW9uCj4gPiA+ID4+IHN1
cHBvcnQgaGFzIGFscmVhZHkgYmVlbiBhZGRlZCBpbnRvIHRoZSBkcml2ZXIuCj4gPiA+ID4KPiA+
ID4gPiBXaGljaCBkcml2ZXIsIFBIWSBvciBDb250cm9sbGVyID8KPiA+ID4KPiA+ID4gQ29udHJv
bGxlciwgc2VlCj4gPiA+Cj4gPiA+IDA5NDgzOTU5ZTM0ZCAoIlBDSTogZHdjOiBBZGQgc3VwcG9y
dCBmb3IgY29uZmlndXJpbmcgbGFuZSBlcXVhbGl6YXRpb24gcHJlc2V0cyIpCj4gPgo+ID4gWWVz
LCB0aGlzIHBhdGNoIGlzIGhlbHBpbmcgdG8gc29sdmUgZ2VuNCBzdGFiaWxpdHkgaXNzdWUuCj4g
PiA+Cj4gPiA+IGFuZCBjb21taXRzIGFyb3VuZCBpdAo+ID4gPgo+ID4gPiBkb2VzIHRoaXMgY2hh
bmdlIGRlcGVuZHMgb24gdGhlIHBhdGNoIDEgUEhZIHNldHRpbmdzIHVwZGF0ZSA/Cj4gPiA+Cj4g
PiA+IFRoYXQgSSdtIGN1cmlvdXMgYWJvdXQgdG9vLCBidXQgSSB3b3VsZCBndWVzc3RpbWF0ZSBu
bwo+ID4gPgo+ID4gdGhpcyBjaGFuZ2UgZG9lc24ndCBkZXBlbmRzIG9uIHRoZSBwYXRjaCAxIFBI
WSBzZXR0aW5ncyB1cGRhdGUKPgo+IFRoZW4gd2hhdCBoYXMgY2hhbmdlZCwgYXMgcHJldmlvdXNs
eSBpdCB3YXMgZG9jdW1lbnRlZCB0byBoYXZlIHN0YWJpbGl0eQo+IGlzc3Vlcy4KPgpBY3R1YWxs
eSB0aGlzIGNvbnRyb2xsZXIgY2hhbmdlIGlzIHNvbHZpbmcgdGhlIHN0YWJpbGl0eSBpc3N1ZSB3
aXRoCmdlbjQ6ICJQQ0k6IHFjb206IEFkZCBlcXVhbGl6YXRpb24gc2V0dGluZ3MgZm9yIDE2LjAg
R1QvcyIKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcGNpLzIwMjQwOTExLXBjaS1xY29t
LWdlbjQtc3RhYmlsaXR5LXY3LTMtNzQzZjVjMWZkMDI3QGxpbmFyby5vcmcvCgpUaGFua3MsCk1y
aW5tYXkKPiAtLQo+IFdpdGggYmVzdCB3aXNoZXMKPiBEbWl0cnkKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
