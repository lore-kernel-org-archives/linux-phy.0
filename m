Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72B14E7E0BA
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 09:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66O07gT5g3naugqbwFZVbm4UHEWbAp7biVTUpO1ekYY=; b=i/jnC+asFn/4gS
	C204sTvr/wfEBRU9AJlyQMtyzRxXFXlCLrg0DpSsMHOpGHp0uErelJs8CVoif0ZeZ4iyegoNr9xr7
	9rK3aq9F9B4JiRvuHfh4P2SA44cfGo7d1yFXo7QShihNRuuLRO0TsbLNNDooy4lwPMNqtBLI84ipe
	9wTocZcsUn3oT0X2/ibB/ZnRjlqOo7hcDsw895M9tMfsgxnr/YYsVondNX4lCO6N75uxwVxYetmat
	R9D6LFs/mm0EWXkufvqHCGdlasXgmGpkxsAfID067V+PFP7DZxGd4wFC+uOKYK3cHiuRnnoLkfZfP
	LrSopDwbrdha8Y0oWAQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNwX-0000000FBii-3pTI;
	Mon, 09 Feb 2026 09:52:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNwU-0000000FBhq-3n2y
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 09:52:32 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6195NWck2031677
	for <linux-phy@lists.infradead.org>; Mon, 9 Feb 2026 09:52:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uPqaQmc77LREJ3f/zUnGH6aW2dazfKHgYzeadJPl/Wk=; b=d17KUXCLG5pIlm/1
	R8oUghAsh2KXhm5Ric9D+XFyyrL55rggiKPVVOET1lv224feo1/VJ4J7T2bglrkZ
	SsDZqUeMXFEPJnbA7zBraRdQnRB5Yus2zGSs/K+Rlz70t/DXs7RjGy7eQ44aR5ON
	L/HVq85HUbypk9PtRs49iGSBiaHLT+s4e3y6gN03GKc373OyIR4/qrAahQb9WEOV
	IXpk0Y2hv2FZKs09hqDHk5ULMSwV7T2xhzuITKYgTvJqrDxtqZgEUoGf7Kn/S95F
	E1wuw0EVjMvKI+6F2EwIK2T0JXIFva2hLPQaK3aUfQlDPn19cK5knP+3T5/XcsmB
	c3Dv7g==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c79d30wqw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 09:52:29 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8243fc3fe8eso5153965b3a.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 01:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770630749; x=1771235549; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uPqaQmc77LREJ3f/zUnGH6aW2dazfKHgYzeadJPl/Wk=;
        b=fJXh0VaVZ9jjSUxlUp2WjW3Vd5CoNpCEoZiPx3P3JF4dB70w8WpJ9eImAWXiCq5+Ie
         lKi03syMSkpllYF1DEZCo4VvboXAof79fYOnJjQ4yIW/DT3Tis3YwudrZZVNXuIK7edi
         g5Wp6PeIUxRXsBDWdmGal134WptvB7P21ScvQfXmNRHSi+bSyUlsAVlAxFlit8sj00q1
         K+Q9F11k/P9TrDYfDEsYmviaTQOwheQsBP4mQhAqz9TXWryTz98yY1mwhPhAIAx7oEnh
         RhXJHsgVBYj8LZICY+F9KuZicEcHAd2408ATuhddJfb4hbFODO0rAPxM6rEJjs+Bllfj
         g7xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770630749; x=1771235549;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uPqaQmc77LREJ3f/zUnGH6aW2dazfKHgYzeadJPl/Wk=;
        b=rNmg11HgsChhFKVuscv5lqWPQDDjFw0arp84UvLa23rn7zBlm2VWOjPKNbLBY6OROw
         E5UxwjISssm4SebQWjgUgPWRwdaTlP9c2eNEbqW9AROapErdqDaCK5RTRdMTbQA//D8k
         S6q7GOuXbeEdCmkmogumUJwv0tDMzbhB7umuPswFrl3iCxlTI4cpODFqvByY+q6DwCp6
         PQ0kAvcy8Vk5tVmD3Gf1P42p5ONFS96oadcFQLg5eyRTPVboWDtqpxc6VWtdfSgbOQEk
         9J9lylEFCtnCMEN9YCG8iiRyxVzGiocQc7xjxlpw+e3gKS6ApMPsT8avg1psVp3ixWXy
         I6Eg==
X-Forwarded-Encrypted: i=1; AJvYcCWdhfid6udvEDTeDQcqpI0vSBKWnATVH4sFzKh5bz4UsCRDeZiJwJS1qdmpaDNEhxJNobcHAb6+jtI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxD3XiNS2Xffrs8lG2faW1Hd+ql0cd2NCxvnCJRPQLZtf2XNdUr
	OglI43kW1QzuzufyxELK+a/IMtdZM9SSg0Zz+NCHdPiQXhfc8EwF7IcNA2lwFXOzOP6qYWtbgrK
	ShStfsOj7gaY7mK5QqAuyREQrTrUCMxSrYIGr6Rg67OUdFpr78gDo7IkBUD1m5odpRXvg
X-Gm-Gg: AZuq6aJM8j5U+eIDz6LVeoNy70qSNpZ43+6zSqWbW2VZ8Epa+A3YPCsG/f98MOZbg35
	4ctsOhiCuCmsyD11qB7cNf4yD8m0nJdV3GukaFu4Hdrok+OXgDd8qUg8yDTBYo+l3P7JsB4VRRh
	UXjO9Mn9C69gGv5hag9O7CP/wcD/3zteqi1aItuA1/pqYdsz1gCvbFnT5SFMeNApNPvLyyL3hrj
	ixbDTa1+wH9coY9nKERQ8NeloBbQXx5M6LJtkSFnomLQl76pygXPU4OGAHW6o0uTVH1JMqaHT+Q
	zt+GEQ+9TDgwl6dtXyFh3wcp41MD/U8mVPQ7t6SPE6Eth5jOO37wdMfrTLc1NOmQDX0/TIU5pn5
	ZDZUSrjAysNPiQ5ibFGm9e5t11LtMyd6aI07xGfWOe5HoN4LUTVRYk5tHpgLfsB3L0IA04N3327
	Ffd+I=
X-Received: by 2002:a05:6a00:1a06:b0:81f:3c34:fa78 with SMTP id d2e1a72fcca58-824416350cbmr9379320b3a.25.1770630748615;
        Mon, 09 Feb 2026 01:52:28 -0800 (PST)
X-Received: by 2002:a05:6a00:1a06:b0:81f:3c34:fa78 with SMTP id d2e1a72fcca58-824416350cbmr9379297b3a.25.1770630748095;
        Mon, 09 Feb 2026 01:52:28 -0800 (PST)
Received: from [10.133.33.6] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824418ccb2asm9531929b3a.58.2026.02.09.01.52.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 01:52:27 -0800 (PST)
Message-ID: <23930db0-730e-4f99-a661-262b15f1a8ac@oss.qualcomm.com>
Date: Mon, 9 Feb 2026 17:52:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] phy: qcom: edp: Correct and clean up eDP/DP combo PHY
 configuration values
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-1-231882bbf3f1@oss.qualcomm.com>
 <57bwrceuqejzliljhrzj5wfumtr2q3dslgmjj3vd7masafi4k2@dskfnosor553>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <57bwrceuqejzliljhrzj5wfumtr2q3dslgmjj3vd7masafi4k2@dskfnosor553>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA4MiBTYWx0ZWRfXyzDmSg83zJHP
 NQTCu5S4jWXkn4mL3SXTZJDQuVr0ZOzWZ590bN/ADMzjYIE6P2BVzec8Pxq4rvMfTVUkdMPI/Mo
 S+SNuH+N0/N7nTsmycAIlXEbS6FwZpyjmGNGE4UeAjX4LrtO9fDsC8uR1wvpmFp2aldlQruE6Gr
 S9uzdLJ2U8/16SpEC5JHbzf5tqVPHNK/E2fKhgk5xPawVITShO7+bpWHJX1kBf9HSxnRZd4mhz0
 wA7uS4WIbcyYlxsBrZgJdOPQ7aItX1mS8grvNTRCbD/S6wjBtCJ93AJSLJLxT+44n3LFsL5P42y
 P/vlTpTPeBjnYEw7rXblh/6iRY9sezN7nqs66gvDx7gWymtKqQOpAYDtHamllT8EUIuIY+nNODs
 azi/NIO97yptsVepVorxYgEY/i5DPu2y9nYrpN7/IWEzqHbVI4pf2ILf5Bq/GGhI32L7dPsmSt0
 5ltd4j6MGwpsIxoHRiQ==
X-Proofpoint-ORIG-GUID: QIRl__Hc-huYST72_79aIfQE2mEvG8XP
X-Authority-Analysis: v=2.4 cv=GJAF0+NK c=1 sm=1 tr=0 ts=6989ae5d cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=n6yyXkIT8M5sXNEpEagA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: QIRl__Hc-huYST72_79aIfQE2mEvG8XP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 adultscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_015231_065712_EAC304A3 
X-CRM114-Status: GOOD (  20.70  )
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

CgpPbiAyLzcvMjAyNiA2OjIyIFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIFRodSwg
RmViIDA1LCAyMDI2IGF0IDA1OjIwOjUzUE0gKzA4MDAsIFlvbmd4aW5nIE1vdSB3cm90ZToKPj4g
QWNjb3JkaW5nIHRvIHRoZSBjdXJyZW50IEhQRyBzZXR0aW5ncywgbW9zdCBlRFAvRFAgY29tYm8g
UEhZcyBjYW4gcmV1c2UgdGhlCj4+IHNhbWUgY29uZmlndXJhdGlvbiB2YWx1ZXMuCj4+IERQIG1v
ZGXvvJoKPj4gCS1zYTg3NzVwL3NjNzI4MC9zYzgyODB4cC94MWU4MDEwMAo+PiAJLWdseW11cgo+
PiBlRFAgbW9kZShsb3cgdmRpZmYpOgo+PiAJLWdseW11ci9zYTg3NzVwL3NjODI4MHhwL3gxZTgw
MTAwCj4+IAktc2M3MjgwCj4+IFRoZSBjdXJyZW50IGRyaXZlciBzdGlsbCBrZWVwcyBtdWx0aXBs
ZSB2ZXJzaW9ucyBvZiB0aGVzZSB0YWJsZXMgYW5kCj4+IGRvZXNuJ3QgZnVsbHkgc3VwcG9ydCBl
dmVyeSBjb21ibyBQSFkgbW9kZS4gVGhpcyBwYXRjaCByZW1vdmVzIHRoZQo+IAo+IFNlZSBEb2N1
bWVudGF0aW9uL3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdCwgIlRoaXMgcGF0Y2giLgo+
IApTdXJlLiBnb3QgaXQgdGhhbmtzLCB3aWxsIHJlbW92ZSAiVGhpcyBwYXRjaCIuCj4+IHJlZHVu
ZGFudCBjb25maWdzIGFuZCBrZWVwcyBvbmx5IHRoZSBzZXRzIHdlIGFjdHVhbGx5IHVzZSwgbWF0
Y2hpbmcgdGhlCj4+IHBsYXRmb3JtcyBsaXN0ZWQgYWJvdmUuCj4gCj4gU2hvdWxkIGl0IGJlIGNv
bWJpbmVkIHdpdGggdGhlIDNyZCBwYXRjaD8gVGhlcmUgeW91IHNvcnQgb3V0IGFsbCB0aGUKPiB0
YWJsZXMsIGl0IG1ha2VzIG1vcmUgc2Vuc2UgdG8gcmV2aWV3IGFsbCBwcm9ncmFtbWluZyB0b2dl
dGhlci4KPiAKSGksIGlmIHRoaXMgd291bGQgaGVscCB3aXRoIHlvdXIgcmV2aWV3IHdvcmssIEni
gJltIHZlcnkgaGFwcHkgdG8gZG8gaXQuCk15IG9yaWdpbmFsIGludGVudGlvbiB3YXMgdG8gZG8g
c29tZSBjbGVhbnVwIGluIHRoaXMgcGF0Y2jigJRjb3JyZWN0IHRoZSAKdGFibGUgdmFsdWVzIHNv
IHRoYXQgbW9yZSBwbGF0Zm9ybXMgY2FuIHJldXNlIHRoZSBzYW1lIHRhYmxlLgogRnJvbSBLb25h
cmTigJlzIGNvbW1lbnRzLCBpdCBzZWVtcyB0aGF0IHRoZSBIUEcgdGFibGUgbWF5IG5vdCBiZSB0
aGUgbW9zdCAKYXBwcm9wcmlhdGUgb25lIGVpdGhlci4KTWF5YmUgc2hvdWQgZmlyc3QgZGV0ZXJt
aW5lIHdoYXQgdGhlIGNvcnJlY3QgdGFibGUgdmFsdWVzIHNob3VsZCBiZS4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogWW9uZ3hpbmcgTW91IDx5b25neGluZy5tb3VAb3NzLnF1YWxjb21tLmNvbT4KPj4g
LS0tCj4+ICAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMgfCA0MSArKysrKysr
KystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEwIGlu
c2VydGlvbnMoKyksIDMxIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1lZHAuYwo+PiBpbmRleCAxM2ZlYWI5OWZlZWMuLjEwY2JiN2Q5YThhMCAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMKPj4gKysrIGIvZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMKPj4gQEAgLTExNiwxNyArMTE2LDE3IEBAIHN0cnVj
dCBxY29tX2VkcCB7Cj4+ICAgfTsKPj4gICAKPj4gICBzdGF0aWMgY29uc3QgdTggZHBfc3dpbmdf
aGJyX3Jicls0XVs0XSA9IHsKPj4gLQl7IDB4MDgsIDB4MGYsIDB4MTYsIDB4MWYgfSwKPj4gKwl7
IDB4MDcsIDB4MGYsIDB4MTYsIDB4MWYgfSwKPj4gICAJeyAweDExLCAweDFlLCAweDFmLCAweGZm
IH0sCj4+ICAgCXsgMHgxNiwgMHgxZiwgMHhmZiwgMHhmZiB9LAo+PiAgIAl7IDB4MWYsIDB4ZmYs
IDB4ZmYsIDB4ZmYgfQo+PiAgIH07Cj4+ICAgCj4+ICAgc3RhdGljIGNvbnN0IHU4IGRwX3ByZV9l
bXBfaGJyX3Jicls0XVs0XSA9IHsKPj4gLQl7IDB4MDAsIDB4MGQsIDB4MTQsIDB4MWEgfSwKPj4g
Kwl7IDB4MDAsIDB4MGUsIDB4MTUsIDB4MWEgfSwKPj4gICAJeyAweDAwLCAweDBlLCAweDE1LCAw
eGZmIH0sCj4+ICAgCXsgMHgwMCwgMHgwZSwgMHhmZiwgMHhmZiB9LAo+PiAtCXsgMHgwMywgMHhm
ZiwgMHhmZiwgMHhmZiB9Cj4+ICsJeyAweDA0LCAweGZmLCAweGZmLCAweGZmIH0KPj4gICB9Owo+
PiAgIAo+PiAgIHN0YXRpYyBjb25zdCB1OCBkcF9zd2luZ19oYnIyX2hicjNbNF1bNF0gPSB7Cj4+
IEBAIC0xNTgsNyArMTU4LDcgQEAgc3RhdGljIGNvbnN0IHU4IGVkcF9zd2luZ19oYnJfcmJyWzRd
WzRdID0gewo+PiAgIH07Cj4+ICAgCj4+ICAgc3RhdGljIGNvbnN0IHU4IGVkcF9wcmVfZW1wX2hi
cl9yYnJbNF1bNF0gPSB7Cj4+IC0JeyAweDA1LCAweDEyLCAweDE3LCAweDFkIH0sCj4+ICsJeyAw
eDA1LCAweDExLCAweDE3LCAweDFkIH0sCj4+ICAgCXsgMHgwNSwgMHgxMSwgMHgxOCwgMHhmZiB9
LAo+PiAgIAl7IDB4MDYsIDB4MTEsIDB4ZmYsIDB4ZmYgfSwKPj4gICAJeyAweDAwLCAweGZmLCAw
eGZmLCAweGZmIH0KPj4gQEAgLTE3MiwxMCArMTcyLDEwIEBAIHN0YXRpYyBjb25zdCB1OCBlZHBf
c3dpbmdfaGJyMl9oYnIzWzRdWzRdID0gewo+PiAgIH07Cj4+ICAgCj4+ICAgc3RhdGljIGNvbnN0
IHU4IGVkcF9wcmVfZW1wX2hicjJfaGJyM1s0XVs0XSA9IHsKPj4gLQl7IDB4MDgsIDB4MTEsIDB4
MTcsIDB4MWIgfSwKPj4gLQl7IDB4MDAsIDB4MGMsIDB4MTMsIDB4ZmYgfSwKPj4gLQl7IDB4MDUs
IDB4MTAsIDB4ZmYsIDB4ZmYgfSwKPj4gLQl7IDB4MDAsIDB4ZmYsIDB4ZmYsIDB4ZmYgfQo+PiAr
CXsgMHgwYywgMHgxNSwgMHgxOSwgMHgxZSB9LAo+PiArCXsgMHgwYiwgMHgxNSwgMHgxOSwgMHhm
ZiB9LAo+PiArCXsgMHgwZSwgMHgxNCwgMHhmZiwgMHhmZiB9LAo+PiArCXsgMHgwZCwgMHhmZiwg
MHhmZiwgMHhmZiB9Cj4+ICAgfTsKPj4gICAKPj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IHFjb21f
ZWRwX3N3aW5nX3ByZV9lbXBoX2NmZyBlZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2NmZyA9IHsKPj4g
QEAgLTE5MywyNyArMTkzLDYgQEAgc3RhdGljIGNvbnN0IHU4IGVkcF9waHlfdmNvX2Rpdl9jZmdf
djRbNF0gPSB7Cj4+ICAgCTB4MDEsIDB4MDEsIDB4MDIsIDB4MDAsCj4+ICAgfTsKPj4gICAKPj4g
LXN0YXRpYyBjb25zdCB1OCBlZHBfcHJlX2VtcF9oYnJfcmJyX3Y1WzRdWzRdID0gewo+PiAtCXsg
MHgwNSwgMHgxMSwgMHgxNywgMHgxZCB9LAo+PiAtCXsgMHgwNSwgMHgxMSwgMHgxOCwgMHhmZiB9
LAo+PiAtCXsgMHgwNiwgMHgxMSwgMHhmZiwgMHhmZiB9LAo+PiAtCXsgMHgwMCwgMHhmZiwgMHhm
ZiwgMHhmZiB9Cj4+IC19Owo+PiAtCj4+IC1zdGF0aWMgY29uc3QgdTggZWRwX3ByZV9lbXBfaGJy
Ml9oYnIzX3Y1WzRdWzRdID0gewo+PiAtCXsgMHgwYywgMHgxNSwgMHgxOSwgMHgxZSB9LAo+PiAt
CXsgMHgwYiwgMHgxNSwgMHgxOSwgMHhmZiB9LAo+PiAtCXsgMHgwZSwgMHgxNCwgMHhmZiwgMHhm
ZiB9LAo+PiAtCXsgMHgwZCwgMHhmZiwgMHhmZiwgMHhmZiB9Cj4+IC19Owo+PiAtCj4+IC1zdGF0
aWMgY29uc3Qgc3RydWN0IHFjb21fZWRwX3N3aW5nX3ByZV9lbXBoX2NmZyBlZHBfcGh5X3N3aW5n
X3ByZV9lbXBoX2NmZ192NSA9IHsKPj4gLQkuc3dpbmdfaGJyX3JiciA9ICZlZHBfc3dpbmdfaGJy
X3JiciwKPj4gLQkuc3dpbmdfaGJyM19oYnIyID0gJmVkcF9zd2luZ19oYnIyX2hicjMsCj4+IC0J
LnByZV9lbXBoYXNpc19oYnJfcmJyID0gJmVkcF9wcmVfZW1wX2hicl9yYnJfdjUsCj4+IC0JLnBy
ZV9lbXBoYXNpc19oYnIzX2hicjIgPSAmZWRwX3ByZV9lbXBfaGJyMl9oYnIzX3Y1LAo+PiAtfTsK
Pj4gLQo+PiAgIHN0YXRpYyBjb25zdCB1OCBlZHBfcGh5X2F1eF9jZmdfdjVbRFBfQVVYX0NGR19T
SVpFXSA9IHsKPj4gICAJMHgwMCwgMHgxMywgMHhhNCwgMHgwMCwgMHgwYSwgMHgyNiwgMHgwYSwg
MHgwMywgMHgzNywgMHgwMywgMHgwMiwgMHgwMiwgMHgwMCwKPj4gICB9Owo+PiBAQCAtNTY0LDcg
KzU0Myw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9lZHBfcGh5X2NmZyBzYTg3NzVwX2Rw
X3BoeV9jZmcgPSB7Cj4+ICAgCS5pc19lZHAgPSBmYWxzZSwKPj4gICAJLmF1eF9jZmcgPSBlZHBf
cGh5X2F1eF9jZmdfdjUsCj4+ICAgCS52Y29fZGl2X2NmZyA9IGVkcF9waHlfdmNvX2Rpdl9jZmdf
djQsCj4+IC0JLnN3aW5nX3ByZV9lbXBoX2NmZyA9ICZlZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2Nm
Z192NSwKPj4gKwkuc3dpbmdfcHJlX2VtcGhfY2ZnID0gJmVkcF9waHlfc3dpbmdfcHJlX2VtcGhf
Y2ZnLAo+PiAgIAkudmVyX29wcyA9ICZxY29tX2VkcF9waHlfb3BzX3Y0LAo+PiAgIH07Cj4+ICAg
Cj4+IEBAIC05NDQsNyArOTIzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfdmVyX29wcyBx
Y29tX2VkcF9waHlfb3BzX3Y4ID0gewo+PiAgIHN0YXRpYyBzdHJ1Y3QgcWNvbV9lZHBfcGh5X2Nm
ZyBnbHltdXJfcGh5X2NmZyA9IHsKPj4gICAJLmF1eF9jZmcgPSBlZHBfcGh5X2F1eF9jZmdfdjgs
Cj4+ICAgCS52Y29fZGl2X2NmZyA9IGVkcF9waHlfdmNvX2Rpdl9jZmdfdjgsCj4+IC0JLnN3aW5n
X3ByZV9lbXBoX2NmZyA9ICZlZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2NmZ192NSwKPj4gKwkuc3dp
bmdfcHJlX2VtcGhfY2ZnID0gJmVkcF9waHlfc3dpbmdfcHJlX2VtcGhfY2ZnLAo+PiAgIAkudmVy
X29wcyA9ICZxY29tX2VkcF9waHlfb3BzX3Y4LAo+PiAgIH07Cj4+ICAgCj4+Cj4+IC0tIAo+PiAy
LjQzLjAKPj4KPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
