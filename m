Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EBDAD14893
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 04:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjhNpG45wJOK3BAR7fDGMMfX0VOpPMuchd2a53b+GzA=; b=3J8Q2CRvy9JjxP
	JP8kaXJd82A8MNaiTRYOPGBkdq0odYHUds+iy7IUCkEHgUOkUnOCRmgYt/Ql6GVYNBMwBbUbNwEeC
	4C4PDhCrcVkMOgVTNMgxTW+zQTp1RmW6fGkeAxInc4x3S384P20rm/0ENeqhLZsUHkvE2Dviny06O
	cbVclorloVR1nx2iNLzhzzACwL061HadxgIIDc2y9nI9mXRej2bbGw9U77LMX11QEboE75XMNueMZ
	CESUZM9Stz+oayN3Hzs7/5YLEF+sFt9NrTUIiHjUezAzYjdwSQv8h6bmwHCFf+/j3/goUc1MJFX8S
	JmCXvQmouiDMjH2POivA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdi6Y-0000000FvXs-44VE;
	Thu, 08 Jan 2026 04:58:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdi6X-0000000FvXI-0jD3
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 04:58:38 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607NBrj32239346
	for <linux-phy@lists.infradead.org>; Thu, 8 Jan 2026 04:58:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1oZWKL8WFE/TBScZ84iQCle13ucFqibIGaIK9CHjIWk=; b=Ls44GIRTBwJnmZ2l
	cCVNybIBFEwBR0OmoKChQLF0+FpGPVL6Cd37IN/Sacaz1E17g56Jf4bvsL8ka0AI
	FiV0Iar6JsFLKLlkzztFtZ4MeK7/dVd1qYnuDlA0sFii1ni7yszKQpnzz17DaN86
	Oyj59An+Qx2HqOjTc1893NFKU6+A40TWi+y6SemQXt4+pU3TmSW5YRR9l4gtVUR+
	U/U5s2e8Rj4vxGAP5S8+cU35ut+TqzrQsuguPMos8cEr6gL/6zHWv6LJXUlZQWU7
	993LR8mffu09QuKiCdaAna1hXwcFgt2c23Ho2axVRbQZ/EdGmSB+GPKvN3Z8WKBQ
	FHUkKw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhqwg2n1f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 04:58:35 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34aa1d06456so4306270a91.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 20:58:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767848315; x=1768453115; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1oZWKL8WFE/TBScZ84iQCle13ucFqibIGaIK9CHjIWk=;
        b=ERgz45oeiUEVuRVQXp19mXg5REdejDovIkd5BR36tw24iHWJ9l1QsYf5HcFWG5Ec2z
         KzqvA1dtivH+DVzr4cU/bQmQOcaX07bi/g7IFURTBWkj4uDPghFrUftRcjo4bN/AITst
         4mBdK9WW8j7mogYnUtEkLveyoc5CU3fGtf3Un4i9Y8lmyOHgHY7XBAwm35B7rjGvjeF4
         2UxY2fPOYTq0/sTBRIueirJFcVBtviPj75+91rGJVhygiUp58rescM6Ca7pJiYAmNsnR
         EEsYn7Y1hDXDjGTegJjtkpaL8qXiy4Fw550b7ZSpcjM2ZB3IU35WgUjeciJx18aqW6q2
         mF0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767848315; x=1768453115;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1oZWKL8WFE/TBScZ84iQCle13ucFqibIGaIK9CHjIWk=;
        b=o9fNF1kd5yoxlihS8f72k22AVmKxMf5YnLQptjKhry9y/hUWpUFh0A/xPXQya/d/0d
         VIhc0DFU50gc7loTctIKgBrFalvbpjkYWCnjQPiBfiqMnUZKu2EKzBkByw0sp+y/U0Lj
         eGPvKfyF7F8lU2SAFvl9pc1g1x/luB9Gg490kbGEYdbs6cdYRqI+ER8poansPw/UDpE2
         8fPZfRm+4MFQLzLKDI/t69iF2ET+hOCFwceTI6GHA0hw2o4tZuoLVuE515GGmV3mrQ9v
         deydAnDMe7zkV52tS8jJPfxRNGrBod22NvjulEMG7TINLqB/Ji7Eh2E8IkQsTNuG55sk
         uRmg==
X-Forwarded-Encrypted: i=1; AJvYcCXGPZrbGpCDzpl0ZAD93PFcgUFEMo2seobwQ/feuBLmpmtBHzacPDSWtKkbtBSQo7Cmza465JrSizU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3Yq/IG9hD0bBdKrFv44ow18YQV5yMYzN7WOOz5au9tW7wkOL+
	IPthGTVD9LDn6wnRdbDCkAJ+9DRjln+qhFTelPptNdlwMOATpWYF8Zlgx10JkgGGazHD8Tqjbs2
	wR/lSf6y1WSFwTP9EZaUEhh7mKgiEJNtEobgsN5ei4P0Ji4wXzR7RjBn8/dTtu5MC0M27
X-Gm-Gg: AY/fxX4JRJJViNMkjS43kC1nXow6q0AewExzPizxqSsni0vDAlz5cILU4NqO4dk5QWW
	rBjxfkyhKOfx2000eIwYq+XuVji1E27Jt55SZIgOkfcgOjw0ajo+bvu879nu3o7oBLRaav/+2CR
	uoib8exjIIaheQOqNxlH9nOfFSknail0FpxHICSCyLqY7NrdKhCew/Zk4U+guD15+bDHndMbVPc
	KmeEbgX1lkEzjDl5hXNsQgK/V3qJpG9J+uCZPHOt1lJIEQ6s8Mr8D3+wo1D5l7wcODL7z2zeIZR
	nL0HYr8Ruu0v4B+CE5tcrVTWLE0PU4Pymipzppd5Uv16LD2njXR8EszEEceRp5upn1biRARX8hO
	pkdRBGVs+trQZbqeMXrQWhQ==
X-Received: by 2002:a05:6a20:3ca8:b0:343:af1:9a57 with SMTP id adf61e73a8af0-3898f9dd1d5mr3728912637.56.1767848314631;
        Wed, 07 Jan 2026 20:58:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFN6TScipKb3lPetOYRKbU8aWMIDLVoyDaluyKREQZEFcX+18m2Z804vQAWuMfyQ/M0fOsdmg==
X-Received: by 2002:a05:6a20:3ca8:b0:343:af1:9a57 with SMTP id adf61e73a8af0-3898f9dd1d5mr3728874637.56.1767848314031;
        Wed, 07 Jan 2026 20:58:34 -0800 (PST)
Received: from work ([120.60.56.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f6b7a5a69sm1638678a91.1.2026.01.07.20.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 20:58:33 -0800 (PST)
Date: Thu, 8 Jan 2026 10:28:26 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V4 2/4] dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC
 compatible for x1e80100
Message-ID: <tg2eahc5pf2pqvavihtptbxn6hqftdd6euhhap3v4kkffzgasb@fyq5mxlsu5py>
References: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
 <20260106154207.1871487-3-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260106154207.1871487-3-pradeep.pragallapati@oss.qualcomm.com>
X-Proofpoint-GUID: XJjr6UcU3v7xHIvTOYxihP5tsSY87jnP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDAyOSBTYWx0ZWRfXzRK7xH33DWtN
 tiKP4UpHXWBdz4wStvpYzIvsQHqlWFpN2Lg/ugYb6iOgeNOoLaTfhAru3Mumz3gL5yssrm1oPG+
 yE25oCvgcsep32aIS3cqHmtwlg5RVhAQvNUYaoLzWJpZ8gyikLL6oQgU/PqNB3M1ZFaC7KgqKU8
 ZxELvWm+Fby1Y2CBs/22iTZ+smsMfKOLXQtZo65AqoFyF6ES//l67ZTf92gtqJlW5tBeG3AA8cc
 TjWukJ4GKKkf3b1xAjf6VmatccTtZnFSMCyKCYrVQz87+6qoS2Ij9Pu7qpTPVR2XB7jaxa34G6n
 h6PoTqfB/8EVaB2wPKEJuJcLv7nMkDxqXxK4zs08438pEEJQi0+CCZhYVgMk+ONZz17zukNIWM/
 F046w46UgV5EGNINuFD0kg8vBohTR9BR/4SBMo7DhhmIv6pmtaqN5GAVWz7YAmI0uiWypcw3ukK
 MBrCf4ORIjnixSJ9HLA==
X-Authority-Analysis: v=2.4 cv=Pa7yRyhd c=1 sm=1 tr=0 ts=695f397b cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=RufU61fwOX414azV3ffNTg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=drqrqwM6pU4QfT7bHcMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: XJjr6UcU3v7xHIvTOYxihP5tsSY87jnP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_05,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_205837_350665_AFF54C57 
X-CRM114-Status: GOOD (  16.32  )
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

T24gVHVlLCBKYW4gMDYsIDIwMjYgYXQgMDk6MTI6MDVQTSArMDUzMCwgUHJhZGVlcCBQIFYgSyB3
cm90ZToKPiBBZGQgVUZTIEhvc3QgQ29udHJvbGxlciAoVUZTSEMpIGNvbXBhdGlibGUgZm9yIHgx
ZTgwMTAwIFNvQy4gVXNlCj4gU004NTUwIGFzIGEgZmFsbGJhY2sgc2luY2UgeDFlODAxMDAgaXMg
ZnVsbHkgY29tcGF0aWJsZSB3aXRoIGl0Lgo+IAo+IFF1YWxjb21tIFVGU0hDIGlzIG5vIGxvbmdl
ciBjb21wYXRpYmxlIHdpdGggSkVERUMgVUZTLTIuMCBiaW5kaW5nLgo+IEF2b2lkIHVzaW5nIHRo
ZSAiamVkZWMsdWZzLTIuMCIgc3RyaW5nIGluIHRoZSBjb21wYXRpYmxlIHByb3BlcnR5Lgo+IAo+
IFNpZ25lZC1vZmYtYnk6IFByYWRlZXAgUCBWIEsgPHByYWRlZXAucHJhZ2FsbGFwYXRpQG9zcy5x
dWFsY29tbS5jb20+CgpBY2tlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pQGtlcm5l
bC5vcmc+CgotIE1hbmkKCj4gLS0tCj4gIC4uLi9iaW5kaW5ncy91ZnMvcWNvbSxzYzcxODAtdWZz
aGMueWFtbCAgICAgICB8IDM2ICsrKysrKysrKysrLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQs
IDIxIGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sc2M3MTgwLXVmc2hjLnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sc2M3MTgwLXVmc2hj
LnlhbWwKPiBpbmRleCBkOTRlZjRlNmI4NWEuLmZlMThlNDFlYmFjNyAxMDA2NDQKPiAtLS0gYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sc2M3MTgwLXVmc2hjLnlh
bWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sc2M3
MTgwLXVmc2hjLnlhbWwKPiBAQCAtMzEsMjEgKzMxLDI3IEBAIHNlbGVjdDoKPiAgCj4gIHByb3Bl
cnRpZXM6Cj4gICAgY29tcGF0aWJsZToKPiAtICAgIGl0ZW1zOgo+IC0gICAgICAtIGVudW06Cj4g
LSAgICAgICAgICAtIHFjb20sbXNtODk5OC11ZnNoYwo+IC0gICAgICAgICAgLSBxY29tLHFjczgz
MDAtdWZzaGMKPiAtICAgICAgICAgIC0gcWNvbSxzYTg3NzVwLXVmc2hjCj4gLSAgICAgICAgICAt
IHFjb20sc2M3MTgwLXVmc2hjCj4gLSAgICAgICAgICAtIHFjb20sc2M3MjgwLXVmc2hjCj4gLSAg
ICAgICAgICAtIHFjb20sc2M4MTgweC11ZnNoYwo+IC0gICAgICAgICAgLSBxY29tLHNjODI4MHhw
LXVmc2hjCj4gLSAgICAgICAgICAtIHFjb20sc204MjUwLXVmc2hjCj4gLSAgICAgICAgICAtIHFj
b20sc204MzUwLXVmc2hjCj4gLSAgICAgICAgICAtIHFjb20sc204NDUwLXVmc2hjCj4gLSAgICAg
ICAgICAtIHFjb20sc204NTUwLXVmc2hjCj4gLSAgICAgIC0gY29uc3Q6IHFjb20sdWZzaGMKPiAt
ICAgICAgLSBjb25zdDogamVkZWMsdWZzLTIuMAo+ICsgICAgb25lT2Y6Cj4gKyAgICAgIC0gaXRl
bXM6Cj4gKyAgICAgICAgICAtIGVudW06Cj4gKyAgICAgICAgICAgICAgLSBxY29tLHgxZTgwMTAw
LXVmc2hjCj4gKyAgICAgICAgICAtIGNvbnN0OiBxY29tLHNtODU1MC11ZnNoYwo+ICsgICAgICAg
ICAgLSBjb25zdDogcWNvbSx1ZnNoYwo+ICsgICAgICAtIGl0ZW1zOgo+ICsgICAgICAgICAgLSBl
bnVtOgo+ICsgICAgICAgICAgICAgIC0gcWNvbSxtc204OTk4LXVmc2hjCj4gKyAgICAgICAgICAg
ICAgLSBxY29tLHFjczgzMDAtdWZzaGMKPiArICAgICAgICAgICAgICAtIHFjb20sc2E4Nzc1cC11
ZnNoYwo+ICsgICAgICAgICAgICAgIC0gcWNvbSxzYzcxODAtdWZzaGMKPiArICAgICAgICAgICAg
ICAtIHFjb20sc2M3MjgwLXVmc2hjCj4gKyAgICAgICAgICAgICAgLSBxY29tLHNjODE4MHgtdWZz
aGMKPiArICAgICAgICAgICAgICAtIHFjb20sc2M4MjgweHAtdWZzaGMKPiArICAgICAgICAgICAg
ICAtIHFjb20sc204MjUwLXVmc2hjCj4gKyAgICAgICAgICAgICAgLSBxY29tLHNtODM1MC11ZnNo
Ywo+ICsgICAgICAgICAgICAgIC0gcWNvbSxzbTg0NTAtdWZzaGMKPiArICAgICAgICAgICAgICAt
IHFjb20sc204NTUwLXVmc2hjCj4gKyAgICAgICAgICAtIGNvbnN0OiBxY29tLHVmc2hjCj4gKyAg
ICAgICAgICAtIGNvbnN0OiBqZWRlYyx1ZnMtMi4wCj4gIAo+ICAgIHJlZzoKPiAgICAgIG1heEl0
ZW1zOiAxCj4gLS0gCj4gMi4zNC4xCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+N
IOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
