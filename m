Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7C8ED2ECFE
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jan 2026 02:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vChhYmjjnK6mlbU9rdk0FEW9aid8cFduoBbiO/C6kqA=; b=PY5Ciqv2X5miGA
	/EwsT8gaRwDcB/mPdCa0OcGHW4nqSij3PlHYjW7Mrw6wapr8LEHonoLpUxddiSuQZa2Q/1MLouLIp
	xJ7Ic8x+0epjleKoCIphdS7hZKs98kWfcGKl2QdCrsir2sQxDJ+vWTPVtfLyLxT4v2eP39oaswDbb
	gdB1EGxT01iRdKeNHi4JYDdBWqhSQPBkW9M2Hc1QseHVLa0WyOZS/BgwjEB+aY0fC9KbIfcg9t/wF
	vxHh/HHLXBvSg14jhK6tJg+RsNNE0jjQQmMntIp0z4Jn1iV/DsRRS01ecI3ONTr7hesthXJcKNPLh
	+OT8PFUDtTXzrrql93fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi1ik-0000000366F-14WU;
	Tue, 20 Jan 2026 02:43:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi1ii-0000000365s-1Lds
	for linux-phy@lists.infradead.org;
	Tue, 20 Jan 2026 02:43:53 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JL2tH51440832
	for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 02:43:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NRl6Sa+ZwZHRuOm1+JnhJZ4n5H6tSZyrGahUYzTc84k=; b=WSvofj2Ghfai1Lkw
	n/ekCft7017zUBHDfVGYjif8awVgXqrqhsEU0L1Kj1C2m6jjfd++qfyXeZjPwKEy
	yDXRmp1osxY1dxsB0joR1aNWiPGJMA7wfdi5dE+6VSIaUdzXFCl/tiNg1MtvcSO8
	6u8pRPYhRVpjHaPBjDzeygdoNSPzDL9ourbsHugbo/KsPfhmKHERcXRsqkqGVf2E
	3/H11PBbezN0yd0gLNIkHMIKbor9cryQ0fT1wLXesmS86xyQe5r8ybS81bOddA3p
	snpL9YvgB6TTUWziPGpNMHl4VGIHwVsBl4E0buhBSOOqp+hpQjC1hlFiNMHp0ABp
	Xu8yxQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bskj3j3ue-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 02:43:51 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c549aaa796dso7686339a12.1
        for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 18:43:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768877031; x=1769481831; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NRl6Sa+ZwZHRuOm1+JnhJZ4n5H6tSZyrGahUYzTc84k=;
        b=Urm+CMGoZW0xZlGKVUwZolZ6I40IhzjjYRVQ5jifmxtdJeKDhbwHUh8f09TRLfJfpO
         GBHN5lKGJXf7FZv8z7SbGhHMqmN+CFAAqMgYZcncMWylC9QYyoBDtwbjGAVMShi14G1M
         lz0SmIy61VRKu58G5xOJHKjrDJglGL/WkSMCFSQTKeX8Z5sYu1H78H7rQIQ5OFXitEoN
         8Y5stlZxLlhGV0Ktgunkt6Dck3QJfWcTOmxXsu3kk5e3yluEA54f51T7f+eXcCYgYXCd
         jIaJ74DAwXEF0cuLHkslUuiHDxJomRpGz1QH5154KJj4JGyBpSo99SOhN1PQFXTghW5v
         bSzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768877031; x=1769481831;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NRl6Sa+ZwZHRuOm1+JnhJZ4n5H6tSZyrGahUYzTc84k=;
        b=KbnARfWolHucQ9IRScJwNWrT7NoP6o24EeOvQpUtVsyShyZDyQpzburrB8ro3Mv11x
         1b9HEkSeJmfTK13iBDtaJOXwsjuHY47mtQEf79M3JdQcAnE55aI7TotmeF4/MLZ8P1RQ
         wC7R2+js0/TbnIBeqUVxEy+IkfTx3se6FdlkxpSEzdaLSVlfFZ54BuukQv4jFcjRj1Y4
         MimJTB+HCcyyWHzDk0sYxGiaRAeNe7RSZzjahWbjIQP2SLeb2lJZudF11v8/oitOZTeu
         qOEVtTsSEVEnMOQiN/HJn9BFDqs9aajN8f6ZpmeClmd8ltLxBHnxFeHFlhTYJcjmq3yk
         Iwgw==
X-Forwarded-Encrypted: i=1; AJvYcCVSeAscUa33hS7x0XX8+jMxq3FEgQKRZBBX92jpWRfAfX/nB9YgHITFBy9M9WLKXC4I5kfZuhgiVMY=@lists.infradead.org
X-Gm-Message-State: AOJu0YynBop3Msl5vonRADdBGOoE3oQbN5eFCBzWm5rvgXxvZawC9DDr
	MxHGjASyGG5I3+Tenf1t3JaVj/GHZpNxTNyw11JpETVSXBCckVd+AFCSN64bBS8jJR+NZI22ChK
	fA5X0USAp182rwh5CEs4cEDdAdiJ0kkuPZmvHnPRVE7DWkP64FHn2uWxFs08mEodJ1Cn6
X-Gm-Gg: AY/fxX5agnuLgOeCam6M/bOCiCszqwVWe7pbF46Av9GA/B5Fnle4rMNKYkLI9+qn2gs
	EK1Ysrpmu08SV1qpmDHZ1exfAHSbTE3APbZvuKornlAA2IyZ7gQvjFjTmw5eFzZV9+RzS6jni4i
	4yji1dYZotglbYoid/v8ftkJQuBw6USFWxcGRMJkBxqbPWroHfoCZpZEAIUEGEj8Gfawq7rybTq
	pCSKqFkDW57FPLI4U9LARIHox96DNTOpTO3qDLfDPOvqEtmYkDfFb/kKJeA/AhVUg1J4hLOkOEP
	KlW69yE5tbQE/aCCZSua+JEz7iY8LBAG6wqSMmds0h4tqUjEVotb6bgx7RY06H3leIi+AVyFpE2
	RiS4nZwjWz+Q9kxzG6W+h/9ubWacPDVkM1pFpYhVEdP71myo8nu9RgqOeuUDKYbDvlboo36lYSV
	roYN2J
X-Received: by 2002:a05:6a21:6f01:b0:2b1:c9dc:6da0 with SMTP id adf61e73a8af0-38e45e40609mr460456637.46.1768877031044;
        Mon, 19 Jan 2026 18:43:51 -0800 (PST)
X-Received: by 2002:a05:6a21:6f01:b0:2b1:c9dc:6da0 with SMTP id adf61e73a8af0-38e45e40609mr460438637.46.1768877030477;
        Mon, 19 Jan 2026 18:43:50 -0800 (PST)
Received: from [10.133.33.57] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c5edf395851sm10323294a12.36.2026.01.19.18.43.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 18:43:50 -0800 (PST)
Message-ID: <749e716e-a6cb-4adb-8ffc-0d6f4c6d56c4@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 10:43:46 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/msm/dp: Correct LeMans/Monaco DP phy
 Swing/Emphasis setting
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260119-klm_dpphy-v2-1-52252190940b@oss.qualcomm.com>
 <47skckagggxijdhinmmibtrd3dydixtj6pccrgjwyczs7bj2te@2rq2iprmzvyf>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <47skckagggxijdhinmmibtrd3dydixtj6pccrgjwyczs7bj2te@2rq2iprmzvyf>
X-Authority-Analysis: v=2.4 cv=ds7Wylg4 c=1 sm=1 tr=0 ts=696eebe7 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=GPqq8a5sn0nJmRmufXgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDAyMSBTYWx0ZWRfXwsZTU2qRzykT
 g5f4T4riabtUhM16ATa7gHIDwE7hD00jITd1JtCMRErAqQ3N6AGZqhNB+gAqbnIxhkDuGJprTm7
 3h5Inrbt+46NynhCAV5oVQKyPcNSNu/D6pnZz73LZ1pW9QqAGxYqNcThRr86M6jAsbmZe015W5T
 eEsVPMmtaqAnT7ybFyVxvLICSnR23QZeDIu+6LwutlBSurH5Vj4mWQ+MLj//xoEGfFqIV6kNIdq
 nU99UPSkJHc9QV6boCc4C1lya+kKgRAFJ96Cndb12UVCzqqYTdZYsLGuqOofTk4nvFYMICMw0Ck
 f56WY2QwJ2GActDi6ZxYfnu8mhXTPXWQh8r74zI314C/L4POrqwP7Gf4mkmnPx8p7t2cUWFRtsP
 qhqriNvpRIFATR6HTxTiTm1+ZgcOoI+NUUvJ4Chj+u3IeqIuhmPhBZE+8FPby1qnvwZv5lm/woz
 iY5aXntdZuA7J7P0B8w==
X-Proofpoint-ORIG-GUID: gCZv7kenXZ-6GwUYzDtd2Lgc9BlVZoOa
X-Proofpoint-GUID: gCZv7kenXZ-6GwUYzDtd2Lgc9BlVZoOa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-20_01,2026-01-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 phishscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 adultscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_184352_407263_70721860 
X-CRM114-Status: GOOD (  17.41  )
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

CgpPbiAxLzE5LzIwMjYgODo1NSBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBNb24s
IEphbiAxOSwgMjAyNiBhdCAwODozNzoyMFBNICswODAwLCBZb25neGluZyBNb3Ugd3JvdGU6Cj4+
IEN1cnJlbnRseSwgdGhlIExlTWFucy9Nb25hY28gZGV2aWNlcyBhbmQgdGhlaXIgZGVyaXZhdGl2
ZSBwbGF0Zm9ybXMKPj4gb3BlcmF0ZSBpbiBEUCBtb2RlIHJhdGhlciB0aGFuIGVEUCBtb2RlLiBQ
ZXIgdGhlIFBIWSBIUEcsIHRoZSBTd2luZyBhbmQKPj4gRW1waGFzaXMgc2V0dGluZ3MgbmVlZCB0
byBiZSBjb3JyZWN0ZWQgdG8gdGhlIHByb3BlciB2YWx1ZXMuCj4gCj4gTm8sIHRoZXkgbmVlZCB0
byBiZSBjb25maWd1cmVkIGR5bmFtaWNhbGx5LiBJIHdyb3RlIGVhcmxpZXIgdGhhdCB0aGUKPiBk
cml2ZXIgbmVlZHMgcmVmYWN0b3JpbmcuCj4gCkhpLCBEbWl0cnkuIEkgcGxhbiB0byBzdWJtaXQg
dGhlbSBpbiB0aGlzIG9yZGVyOiB0aGlzIHBhdGNoIOKGkiBMRE8gcGF0Y2ggCuKGkiByZWZhY3Rv
ci4KU2luY2UgdGhlIHJlZmFjdG9yIGludm9sdmVzIG1vcmUgcGxhdGZvcm1zIGFuZCBtYXkgdGFr
ZSBzb21lIHRpbWUsIEnigJlkIApsaWtlIHRvIGdldCB0aGlzIHBhdGNoIG1lcmdlZCBmaXJzdC4K
Pj4KPj4gVGhpcyB3aWxsIGhlbHAgYWNoaWV2ZSBzdWNjZXNzZnVsIGxpbmsgdHJhaW5pbmcgb24g
c29tZSBkb25nbGVzLgo+Pgo+PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+PiBGaXhlczog
M2YxMmJmMTYyMTNjICgicGh5OiBxY29tOiBlZHA6IEFkZCBzdXBwb3J0IGZvciBlRFAgUEhZIG9u
IFNBODc3NVAiKQo+PiBSZXZpZXdlZC1ieTogQWJlbCBWZXNhIDxhYmVsLnZlc2FAb3NzLnF1YWxj
b21tLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogWW9uZ3hpbmcgTW91IDx5b25neGluZy5tb3VAb3Nz
LnF1YWxjb21tLmNvbT4KPj4gLS0tCj4+IENoYW5nZXMgaW4gdjI6Cj4+IC0gU2VwYXJhdGUgdGhl
IExETyBjaGFuZ2Ugb3V0LltLb25yYWRdW0RtaXRyeV0KPj4gLSBNb2RpZnkgdGhlIGNvbW1pdCBt
ZXNzYWdlLltEbWl0cnldCj4+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
ci8yMDI2MDEwOS1rbG1fZHBwaHktdjEtMS1hNmI2YWJlMzgyZGVAb3NzLnF1YWxjb21tLmNvbQo+
PiAtLS0KPj4gICBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYyB8IDIzICsrKysr
KysrKysrKysrKysrKysrKystCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPj4KPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
