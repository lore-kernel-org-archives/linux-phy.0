Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C904EA3F38
	for <linux-phy@archiver.kernel.org>; Tue, 10 Feb 2026 10:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRd2a1txSaN+18U+5ufKJJUTUGM4Zj3kNcomol5JdhE=; b=wzCcjD8R6SZQMx
	RWwTpgHQHQivrhpVXWllx6QMw3TLyFN2T7qschhfyPq2uJW2c+AtPvCgy9rqRV/wTMnPW7vaEx6BI
	8duEC2gLeHuEWsL8zkAH+VX7AkUX5wXCnP97YgndaTybiqGOdrOTm0aBjT4F66Q1NkH8kngz1GC7l
	rzXayio1JzPi5Ez9YgB7p2jkzDgZ841smx1hoOXKEwKvkt6wag9POV1IgzW5FAaq9XDeD4mYPPOfP
	QpEoPvA3E3k6WJCgyJvCOo2gXl6/CGlAtIr9mlvW6f8Lv4dPuHh8h0XeJ+8Py7+oKBXA/McfV934f
	5CN02rZRQMN/Bzr90MJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpkqY-0000000GpUR-3COD;
	Tue, 10 Feb 2026 10:19:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpkqW-0000000GpU6-0o6m
	for linux-phy@lists.infradead.org;
	Tue, 10 Feb 2026 10:19:53 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A9EWpL1231999
	for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 10:19:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	escwbqVJN0/V5CRcV9ZKOJ/PB8ZuKP8rhVmgblAx+Yg=; b=KMKopnLB74y78K1G
	UEmtKFOqHJLIGCRvIXmweHtsQjGDlBTU3uFuaT50WDzfCLVHRnj0eOEDjp0l6VZ3
	k4VuZK3QUigl3gvtWH6IIWirF5TrA/9mM3rns9dJt0SoxsHM4CEE6eUfpYLvJ2lH
	Bb/wwma4TNVAgs8UIi9rxMg05qBFvVwuoTlP+ofV0z/CQJsmsQRYCC1aM5bPnZmM
	5BC4IGe3mlE1G5ejxuyBXGnGJkL24YzqOCR+jh4TNz7cEPoMYdr9dMvyfpyjkUnG
	II91t+LfcaypWKquU89ppM2GvyJszNV+xIEw+x0g7CD2uxkmTsWQb/7yDhDqDXoL
	UGxhGw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7uv59e7c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 10:19:50 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c56848e6f53so3626199a12.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Feb 2026 02:19:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770718789; x=1771323589; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=escwbqVJN0/V5CRcV9ZKOJ/PB8ZuKP8rhVmgblAx+Yg=;
        b=E9RGavkIBhYoIpovTALg4GsJyArHRKUR5d37e/Jen4WRnO23O5hDwuLHkE+xVKPsg5
         kDHXQiebjAf0WUz0PnYK0pMsa+QO0GRgwBuBoCwLfGfzrXqMeCr+vbQH8oTGZE9N7JO4
         FXDN82zRRdKSp5mo/UalFZaQoxZ6WBF/F/eWBUZwyC0pZktoFSFpYqROOMd1gMp8tfC9
         iu0R2Mki36IFdXi4mnWeACfgajvmOHkYTO+RZ0fKlbrYtxxUC7wjaa+c53JoEWQIzw9M
         REtzxuHJ1wBBNmR+MNq5s9RqfiZ9pQxLN2unXPkyU8TAEecQtaOPerKZNjaifTmstGf7
         vPXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770718789; x=1771323589;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=escwbqVJN0/V5CRcV9ZKOJ/PB8ZuKP8rhVmgblAx+Yg=;
        b=PEEFfTSo7Ro4s4jPQOn+C1/RhKdfFmonXOTuU497RACRZ1eZPTUp6BO1zrXBkbce2m
         lTgxJzH20Asn+zuCj7aNO/Ti6YS5Po5N3QWw6h41rIIZ/u7OI1n4gxUQKBn1PXHWxwY2
         mV9h2sBJh12QgIoWSpT8R84T1bU4fwVcHgIGB2gaeLtw58+rtiKB3lTd3iqyBP9m2UoL
         +jKXF04LAFrST+GXEDIKmULT3NlDPaMPb62n8ME6H1OFnEBC5mSlXK9AnKJHMekJmE/6
         oP4oE1og6+eUQx3mOqFLyFgtbeXKp/wcHS/gqOF9ewrIjxdCbRtFjpaHzJaVGeUlxQ8U
         TTKA==
X-Forwarded-Encrypted: i=1; AJvYcCUKWQkzphhhPel+CL7CeiTaVyijteCTtaQxKSrm78sepEM0ob22t7LffUnnXDpMtB1QWr5yEYBdD6w=@lists.infradead.org
X-Gm-Message-State: AOJu0YwEM57W8sA3wqiioQRsUDxe47OOu0/0Wc7l+9iuVMZgfjYHltaX
	gVzv9scRrYgJEy1GhXbXYc2ddpyPZoKL/8IDwigwSGLBL+UT5LKaXlcfEdjfxgmJKmiThFrIfEX
	T5e6BurbSfpgtGGNckjfYr2lvtLnK7Mr7/piU11cU4/YBreyzp5zF9W0Le+LevcSs2aYv
X-Gm-Gg: AZuq6aLKgTdmV/s8rCIAru3stYr2BdqL/WyZEGZc2DDhLABDRRjO42nkRZflQn8icBb
	0G7sIZA3yVLqmko0Rsobw8aq6R0VC4ZvbUoFDN+S4mZpRR7PiSV97/nETlIG4TQuUwHo+HdJxWU
	XsmWVLf6QpYZ2jah++m5YdyLn1TcgZcOMdWjDOuKef4Hrgr48W0pTX/4hwFO9Azbqb8u2j8LGfI
	rXNPuIelW92RQieOmDDMURuUXf8PKmdmZuCxsR9Tvg2cfbKxzGqugcWFPbll4pED8sEgwGTpM0d
	fHl5GFTAvFahZSH0fuyOu+GAtTPKgs52xvdsa0xdwF3+l6Nmj77gzgiYZ/fHaFs67nU0K14p0OF
	zkRHqjI0SPgqQ6kxgRpwh81/2/xC76t9zVa46bVw/DvzpCXcjLPjHk13vui25e0dGVMLp25NjuN
	wfJuznk3TVaNH5vFI=
X-Received: by 2002:a17:90b:3505:b0:341:c964:126c with SMTP id 98e67ed59e1d1-354b3d086f9mr10609073a91.34.1770718789473;
        Tue, 10 Feb 2026 02:19:49 -0800 (PST)
X-Received: by 2002:a17:90b:3505:b0:341:c964:126c with SMTP id 98e67ed59e1d1-354b3d086f9mr10609053a91.34.1770718788995;
        Tue, 10 Feb 2026 02:19:48 -0800 (PST)
Received: from [10.133.33.6] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82441695f50sm12314405b3a.22.2026.02.10.02.19.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 02:19:48 -0800 (PST)
Message-ID: <08cec7fc-a3da-4879-857a-32dd65c34311@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 18:19:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qcom: edp: Add per-version LDO configuration
 callback
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-2-231882bbf3f1@oss.qualcomm.com>
 <200b055b-7221-45b5-aea1-2462e07a3c1c@oss.qualcomm.com>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <200b055b-7221-45b5-aea1-2462e07a3c1c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA4NSBTYWx0ZWRfXxBa3sLKRMLhW
 a+mNj166KHGsooaItkAoKv+Bp25F/yRvZMlLW0WhT9+kbxh0dxDMvthzD3UTHzhJl0A4rbZqEHI
 mBJbKOTGloHuxXRLQO4cIYdLAiAhg2+K0/9zqEF3+N2MbqtzidzVsWygqy+IFcQBoqRvIJK+7Hl
 t5+azkMgEnUmUsbTFZTTxKgrvHETKWrfw/EnL8n3QvuYsZYgnIKEIw1XKyXl+iC8QLuyGqi1enc
 cKV8wGrDjgxWdQjcTXgYO8JJ+4QTugAim8rdMgiWyNYUs/5peSqCKYBLmlobfYL0a8j+ytNeqdW
 J1qUR3lwF1QpZ405YBDfNLK0GRYZWsYD/YTAQrM/JOQWKLFJ20+LbVIRLNBRKAQUo96M6yuZo2R
 9OAmzDy631DhlopmPFdXSbAyXvxkgZ7UY9cw1HLE1nUW6gIh+phJY9gs2V0XTE/hl+M8/MH5pQR
 FhWuJWUwQvotfrFbLxQ==
X-Authority-Analysis: v=2.4 cv=P+Q3RyAu c=1 sm=1 tr=0 ts=698b0646 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=3p2AMVgKIYlyzUkkMicA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: eLcUFO2aGtzGYUgzlLU-tzwLUk1JW7Ar
X-Proofpoint-GUID: eLcUFO2aGtzGYUgzlLU-tzwLUk1JW7Ar
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_021952_371603_535305F0 
X-CRM114-Status: GOOD (  12.87  )
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

CgpPbiAyLzYvMjAyNiA2OjUyIFBNLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+IE9uIDIvNS8yNiAx
MDoyMCBBTSwgWW9uZ3hpbmcgTW91IHdyb3RlOgo+PiBJbnRyb2R1Y2UgdGhlIGNvbV9sZG9fY29u
ZmlnIGNhbGxiYWNrIHRvIHN1cHBvcnQgcGVy4oCRUEhZIExETwo+PiBjb25maWd1cmF0aW9uLgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBZb25neGluZyBNb3UgPHlvbmd4aW5nLm1vdUBvc3MucXVhbGNv
bW0uY29tPgo+PiAtLS0KPiAKPiBbLi4uXQo+IAo+PiArc3RhdGljIGludCBxY29tX2VkcF9sZG9f
Y29uZmlnX3Y0KGNvbnN0IHN0cnVjdCBxY29tX2VkcCAqZWRwKQo+PiArewo+PiArCWNvbnN0IHN0
cnVjdCBwaHlfY29uZmlndXJlX29wdHNfZHAgKmRwX29wdHMgPSAmZWRwLT5kcF9vcHRzOwo+PiAr
CXUzMiBsZG9fY29uZmlnOwo+PiArCj4+ICsJaWYgKCFlZHAtPmlzX2VkcCkKPj4gKwkJbGRvX2Nv
bmZpZyA9IDB4MDsKPj4gKwllbHNlIGlmIChkcF9vcHRzLT5saW5rX3JhdGUgPD0gMjcwMCkKPj4g
KwkJbGRvX2NvbmZpZyA9IDB4QzE7Cj4gCj4gbG93ZXJjYXNlIGhleCwgcGxlYXNlCj4gCkdvdCBp
dC4gd2lsbCBmaXggbmV4dCB2ZXJzaW9uCj4+ICsJZWxzZQo+PiArCQlsZG9fY29uZmlnID0gMHg4
MTsKPj4gKwo+PiArCXdyaXRlbChsZG9fY29uZmlnLCBlZHAtPnR4MCArIFRYbl9MRE9fQ09ORklH
KTsKPj4gKwl3cml0ZWwobGRvX2NvbmZpZywgZWRwLT50eDEgKyBUWG5fTERPX0NPTkZJRyk7Cj4g
Cj4gdHgxIHNob3VsZCBiZSBkcF9vcHMtPmxhbmVzID8gMiA6IGxkb19jb25maWcgOiAweDAwLCBp
biBhbGwgY2FzZXMsCj4gSSBiZWxpZXZlCj4gCj4gS29ucmFkCmkgY2hlY2sgdGhlIEhQRywgeWVz
ICwgaGVyZSBuZWVkIHRvIGNvbnNpZGVyIGRwX29wcy0+bGFuZXMuLiB3aWxsIGZpeCBpdCAKbmV4
dCBwYXRjaC4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
